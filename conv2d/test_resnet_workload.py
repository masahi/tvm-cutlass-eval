import tvm
import re
from tvm import relay
import numpy as np
from tvm.runtime.vm import VirtualMachine
from tvm.topi import testing
from tvm.relay.op.contrib.cutlass import partition_for_cutlass
from tvm.contrib import cudnn
from tvm.contrib.cutlass import (
    tune_cutlass_kernels,
    build_cutlass_kernels,
)

import logging

# logging.basicConfig(level=logging.INFO)


def has_cublas():
    return tvm.get_global_func("tvm.contrib.cublas.matmul", True) != None


def has_cutlass():
    return tvm.get_global_func("relay.ext.cutlass", True) != None


def get_ref_rt_mod(mod, params, target="cuda"):
    with tvm.transform.PassContext(opt_level=3, disabled_pass=["Legalize"]):
        lib = relay.build(mod, target=target, params=params)
    dev = tvm.device(target, 0)
    rt_mod = tvm.contrib.graph_executor.GraphModule(lib["default"](dev))
    return rt_mod, dev


def get_output(rt_mod, names, inputs):
    for name, inp in zip(names, inputs):
        rt_mod.set_input(name, inp)
    rt_mod.run()
    return rt_mod.get_output(0).asnumpy()


def profile_and_build(mod, params, sm, tmp_dir="./tmp", lib_path="compile.so"):
    mod = partition_for_cutlass(mod)
    mod, num_cutlass_partition = tune_cutlass_kernels(
        mod, sm, find_first_valid=False, use_multiprocessing=True, tmp_dir=tmp_dir
    )
    with tvm.transform.PassContext(opt_level=3):
        lib = relay.build(mod, target="cuda", params=params)
    lib = build_cutlass_kernels(lib, sm, tmp_dir, lib_path)
    dev = tvm.device("cuda", 0)
    rt_mod = tvm.contrib.graph_executor.GraphModule(lib["default"](dev))
    return rt_mod, dev, num_cutlass_partition


def convert_conv2d_layout(mod, desired_layouts):
    with tvm.transform.PassContext(opt_level=3):
        seq = tvm.transform.Sequential([relay.transform.ConvertLayout(desired_layouts)])
        return seq(mod)


def verify_conv2d_common(
    mod_nchw,
    input_names,
    inputs,
    params,
    sm=80,
    atol=1e-5,
    rtol=1e-5,
    run_benchmark=False,
):
    if not has_cutlass():
        return

    mod_nhwc = convert_conv2d_layout(
        mod_nchw,
        {
            "nn.conv2d": ["NHWC", "OHWI"],
            "nn.conv2d_transpose": ["NHWC", "IHWO"],
            "nn.conv2d_backward_weight": ["NHWC", "OHWI"],
        },
    )
    print(relay.transform.InferType()(mod_nhwc))

    rt_mod, dev, num_cutlass_partition = profile_and_build(mod_nhwc, params, sm)
    out = get_output(rt_mod, input_names, inputs)

    assert num_cutlass_partition > 0

    rt_mod_ref, _ = get_ref_rt_mod(
        mod_nhwc,
        params,
        target="cuda -libs=cudnn",
    )
    ref_out = get_output(rt_mod_ref, input_names, inputs)

    if run_benchmark:
        print("CUTLASS:", rt_mod.benchmark(dev, number=1, repeat=600))
        print(
            "TVM Tensorcore (no tuning):",
            rt_mod_ref.benchmark(dev, number=1, repeat=600),
        )

    # np.testing.assert_allclose(out, ref_out, atol=atol, rtol=rtol)
    # py_out = testing.conv2d_backward_weight_python(inputs[0], inputs[1], (1, 1), (1, 1), (0, 0))
    print(np.max(np.abs(out - ref_out)))
    # print("cuDNN:",  rt_mod_ref.benchmark(dev, number=1, repeat=100))

    # print(np.max(np.abs(out - py_out)))
    # print(np.max(np.abs(ref_out - py_out)))



def verify_conv2d(
    mod_nchw,
    d_shape,
    w_shape,
    sm=80,
    atol=1e-5,
    rtol=1e-5,
    run_benchmark=False,
):
    np_data = np.random.uniform(-1, 1, d_shape).astype("float16")
    np_weight = np.random.uniform(-1, 1, w_shape).astype("float16")
    params = {"weight": np_weight}
    input_names = ["data"]
    inputs = [np_data]

    return verify_conv2d_common(
        mod_nchw,
        input_names,
        inputs,
        params,
        sm=sm,
        atol=atol,
        rtol=rtol,
        run_benchmark=run_benchmark,
    )


def verify_conv2d_backward_weight(
    expr_nchw,  # can be dynamic batch
    grad_shape,
    data_shape,
    sm=80,
    atol=1e-5,
    rtol=1e-5,
    run_benchmark=False,
):
    np_grad = np.random.uniform(-1, 1, grad_shape).astype("float16")
    np_data = np.random.uniform(-1, 1, data_shape).astype("float16")
    params = {}
    input_names = ["grad", "data"]

    return verify_conv2d_common(
        expr_nchw,
        input_names,
        [np_grad, np_data],
        params,
        sm,
        atol,
        rtol,
        run_benchmark=run_benchmark,
    )


def get_workloads():
    workloads = []
    pat = "--n=(\d+) --h=(\d+) --w=(\d+) --c=(\d+) --k=(\d+) --r=(\d+) --s=(\d+) --pad_h=(\d+) --pad_w=(\d+) --stride_h=(\d+) --stride_w=(\d+)"
    with open("resnet50.txt") as f:
        for line in f.readlines():
            m = re.match(pat, line)
            groups = [int(v) for v in m.groups()]
            workloads.append(
                {
                    "n": groups[0],
                    "h": groups[1],
                    "w": groups[2],
                    "c": groups[3],
                    "k": groups[4],
                    "r": groups[5],
                    "s": groups[6],
                    "pad_h": groups[7],
                    "pad_w": groups[8],
                    "stride_h": groups[9],
                    "stride_w": groups[10],
                }
            )

    return workloads


def get_conv2d_nchw(
    d_shape, w_shape, pad_h, pad_w, stride_h, stride_w, out_dtype="float16"
):
    data = relay.var("data", shape=d_shape, dtype="float16")
    weight = relay.var("weight", shape=w_shape, dtype="float16")
    out_channel = w_shape[0]
    return tvm.IRModule.from_expr(
        relay.nn.conv2d(
            data=data,
            weight=weight,
            kernel_size=(w_shape[2], w_shape[3]),
            channels=out_channel,
            padding=(pad_h, pad_w),
            strides=(stride_h, stride_w),
            out_dtype=out_dtype,
        )
    )


def test_conv2d():
    out_dtype = "float16"

    for workload in get_workloads():
        print(workload, end=",")
        d_shape = (workload["n"], workload["c"], workload["h"], workload["w"])
        w_shape = (workload["k"], workload["c"], workload["r"], workload["s"])
        mod_nchw = get_conv2d_nchw(
            d_shape,
            w_shape,
            workload["pad_h"],
            workload["pad_w"],
            workload["stride_h"],
            workload["stride_w"],
            out_dtype,
        )

        verify_conv2d(
            mod_nchw,
            d_shape,
            w_shape,
            sm=80,
            atol=1e-5,
            rtol=1e-5,
            run_benchmark=False,
        )


def get_conv2d_transpose_nchw(
    d_shape,
    w_shape,
    padding,
    strides,
    out_dtype="float32",
    data_dtype="float16",
    weight_dtype="float16",
):
    data = relay.var("data", shape=d_shape, dtype=data_dtype)
    weight = relay.var("weight", shape=w_shape, dtype=weight_dtype)
    out_channel = w_shape[1]
    return tvm.IRModule.from_expr(
        relay.nn.conv2d_transpose(
            data=data,
            weight=weight,
            kernel_size=w_shape[2:],
            channels=out_channel,
            padding=padding,
            strides=strides,
            out_dtype=out_dtype,
        )
    )


def test_conv2d_dgrad():
    out_dtype = "float16"

    for workload in get_workloads():
        print(workload, end=",")
        d_shape = (workload["n"], workload["c"], workload["h"], workload["w"])
        w_shape = (workload["c"], workload["k"], workload["r"], workload["s"])
        mod_nchw = get_conv2d_transpose_nchw(
            d_shape,
            w_shape,
            (workload["pad_h"], workload["pad_w"]),
            (workload["stride_h"], workload["stride_w"]),
            out_dtype,
        )

        verify_conv2d(
            mod_nchw,
            d_shape,
            w_shape,
            sm=80,
            atol=1e-5,
            rtol=1e-5,
            run_benchmark=True,
        )
        return


def get_conv2d_backward_weight(
    d_shape,
    w_shape,
    o_shape,
    padding,
    strides,
    out_dtype="float32",
    data_dtype="float16",
    weight_dtype="float16",
):
    data = relay.var("data", shape=d_shape, dtype=data_dtype)
    grad = relay.var("grad", shape=o_shape, dtype=weight_dtype)
    out_channel = o_shape[1]
    return tvm.IRModule.from_expr(
        relay.nn.conv2d_backward_weight(
            grad=grad,
            data=data,
            kernel_size=w_shape[2:],
            channels=out_channel,
            padding=padding,
            strides=strides,
            out_dtype=out_dtype,
        )
    )


def test_conv2d_wgrad():
    out_dtype = "float32"

    for workload in get_workloads():
        print(workload, end=",")
        d_shape = (workload["n"], workload["c"], workload["h"], workload["w"])
        w_shape = (workload["k"], workload["c"], workload["r"], workload["s"])
        o_shape = cudnn.conv_output_shape(
            0,
            (workload["pad_h"], workload["pad_w"]),
            (workload["stride_h"], workload["stride_w"]),
            (1, 1),
            d_shape,
            w_shape,
            "float16",
            "float32",
        )

        mod_nchw = get_conv2d_backward_weight(
            d_shape,
            w_shape,
            o_shape,
            (workload["pad_h"], workload["pad_w"]),
            (workload["stride_h"], workload["stride_w"]),
            out_dtype,
        )

        verify_conv2d_backward_weight(
            mod_nchw,
            o_shape,
            d_shape,
            sm=80,
            atol=1e-5,
            rtol=1e-5,
            run_benchmark=False,
        )
        break


# test_conv2d()
test_conv2d_dgrad()
