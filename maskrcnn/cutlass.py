import torch
import numpy as np

import tvm
from tvm import relay
import tvm.relay.testing
from tvm.relay.op.contrib.cutlass import partition_for_cutlass
from tvm.contrib.cutlass import tune_cutlass_kernels, build_cutlass_kernels_vm
from tvm.runtime.vm import VirtualMachine

def convert_conv2d_layout(mod, desired_layouts):
    with tvm.transform.PassContext(opt_level=3):
        seq = tvm.transform.Sequential([relay.transform.ConvertLayout(desired_layouts)])
        return seq(mod)


def profile_and_build_vm(
    mod, params, sm, use_3xtf32=True, tmp_dir="./tmp", lib_path="compile.so", vmcode_path="vmcode.ro"
):
    mod = partition_for_cutlass(mod, params)
    print(mod)
    mod, num_cutlass_partition = tune_cutlass_kernels(
        mod, sm, use_3xtf32=use_3xtf32, find_first_valid=False, use_multiprocessing=True, tmp_dir=tmp_dir
    )
    with tvm.transform.PassContext(opt_level=3):
        vm_exec = relay.vm.compile(mod, target="cuda", params=params)
    vm_exec = build_cutlass_kernels_vm(vm_exec, sm, tmp_dir, lib_path, vmcode_path)
    dev = tvm.device("cuda", 0)
    return VirtualMachine(vm_exec, dev), dev, num_cutlass_partition


def get_output_vm(vm, names, inputs):
    params = dict(zip(names, inputs))
    return vm.invoke("main", **params)


in_size = 512
input_shape = (1, 3, in_size, in_size)


def get_input(in_size):
    from tvm.contrib.download import download
    import cv2

    img_path = "test_street_small.jpg"
    img_url = (
        "https://raw.githubusercontent.com/dmlc/web-data/"
        "master/gluoncv/detection/street_small.jpg"
    )
    download(img_url, img_path)

    img = cv2.imread(img_path).astype("float32")
    img = cv2.resize(img, (in_size, in_size))
    img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    img = np.transpose(img / 255.0, [2, 0, 1])
    img = np.expand_dims(img, axis=0)
    return img


img = get_input(in_size)

do_compile = False
use_3xtf32 = False

if do_compile:
    with open("models_fasterrcnn/maskrcnn_fp32.json", "r") as fi:
        nhwc_mod = tvm.ir.load_json(fi.read())
    with open("models_fasterrcnn/maskrcnn_fp32.params", "rb") as fi:
        params = relay.load_param_dict(fi.read())

    # nhwc_mod = convert_conv2d_layout(mod, {"nn.conv2d": ["NHWC", "OHWI"]})
    sm = 80
    rt_mod, dev, num_partition = profile_and_build_vm(nhwc_mod, params, sm, use_3xtf32)
else:
    lib_path = "tmp/compile.so"
    vmcode_path = "tmp/vmcode.ro"
    lib = tvm.runtime.load_module(lib_path)
    code = bytearray(open(vmcode_path, "rb").read())
    vm_exec = tvm.runtime.vm.Executable.load_exec(code, lib)
    dev = tvm.device("cuda", 0)
    rt_mod = VirtualMachine(vm_exec, dev)

out = get_output_vm(rt_mod, ["input0"], [img])
print(out[0].numpy().shape)
print(rt_mod.benchmark(dev, number=1, repeat=100))
