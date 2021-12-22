import torch
import numpy as np
import os
from torch import nn
import cv2
import tvm
from tvm import relay
import torchvision
import tvm.relay.testing
from tvm.relay.op.contrib.cutlass import partition_for_cutlass
from tvm.contrib.cutlass import tune_cutlass_kernels, build_cutlass_kernels_vm
from tvm.runtime.vm import VirtualMachine
from yolort.models import yolov5l
from tvm.relay.transform import ToMixedPrecision


def do_trace(model, inp):
    model_trace = torch.jit.trace(model, inp)
    model_trace.eval()
    return model_trace


def dict_to_tuple(out_dict):
    if "masks" in out_dict.keys():
        return (
            out_dict["boxes"],
            out_dict["scores"],
            out_dict["labels"],
            out_dict["masks"],
        )
    return out_dict["boxes"], out_dict["scores"], out_dict["labels"]


class TraceWrapper(nn.Module):
    def __init__(self, model):
        super().__init__()
        self.model = model

    def forward(self, inp):
        out = self.model(inp)
        return dict_to_tuple(out[0])


def get_torch_outputs(model, inp):
    with torch.no_grad():
        raw_outputs = model(inp)
        outputs, _ = torch.jit._flatten(raw_outputs)
        return [output.cpu().numpy() for output in outputs]


def convert_conv2d_layout(mod, desired_layouts):
    with tvm.transform.PassContext(opt_level=3):
        seq = tvm.transform.Sequential([relay.transform.ConvertLayout(desired_layouts)])
        return seq(mod)


def profile_and_build_vm(
    mod, params, sm, tmp_dir="./tmp", lib_path="compile.so", vmcode_path="vmcode.ro"
):
    mod = partition_for_cutlass(mod, params)
    print(mod)
    mod, num_cutlass_partition = tune_cutlass_kernels(
        mod, sm, profile_all=True, use_multiprocessing=True, tmp_dir=tmp_dir
    )
    with tvm.transform.PassContext(opt_level=3):
        vm_exec = relay.vm.compile(mod, target="cuda", params=params)
    vm_exec = build_cutlass_kernels_vm(vm_exec, sm, tmp_dir, lib_path, vmcode_path, use_fast_math=False)
    dev = tvm.device("cuda", 0)
    return VirtualMachine(vm_exec, dev), dev, num_cutlass_partition


def get_output_vm(vm, names, inputs):
    params = dict(zip(names, inputs))
    return vm.invoke("main", **params)


def get_input(in_size):
    img = cv2.imread("bus.jpg")

    img = img.astype("float32")
    in_size = 512
    img = cv2.resize(img, (in_size, in_size))

    img = np.transpose(img / 255.0, [2, 0, 1])
    img = np.tile(img, (8, 1, 1, 1))

    return img

in_size = 512

yolov5l = yolov5l(export_friendly=True, pretrained=True)
model = TraceWrapper(yolov5l.eval())

img = get_input(in_size)

inp = torch.from_numpy(img)
with torch.no_grad():
    trace = torch.jit.trace(model, inp)
    torch_res = model(inp)

do_compile = False
tmp_dir="../maskrcnn/tmp"
lib_path="compile_yolo5_residual_fusion.so"
vmcode_path="vmcode_yolo5_residual_fusion.ro"

if do_compile:
    if not os.path.exists("models/yolov5l_fp16.json"):
        mod, params = relay.frontend.from_pytorch(trace, [("input", inp.shape)])
        mod = ToMixedPrecision("float16")(mod)
        mod = convert_conv2d_layout(mod, {"nn.conv2d": ["NHWC", "OHWI"]})

        with open("models/yolov5l_fp16.json", "w") as fo:
            fo.write(tvm.ir.save_json(mod))
        with open("models/yolov5l.params", "wb") as fo:
            fo.write(relay.save_param_dict(params))

    with open("models/yolov5l_fp16.json", "r") as fi:
        mod = tvm.ir.load_json(fi.read())
    with open("models/yolov5l.params", "rb") as fi:
        params = relay.load_param_dict(fi.read())

    sm = 80
    rt_mod, dev, num_partition = profile_and_build_vm(
        mod,
        params,
        sm,
        vmcode_path=vmcode_path,
        tmp_dir=tmp_dir,
        lib_path=lib_path
    )
else:
    lib_path = os.path.join(tmp_dir, lib_path)
    vmcode_path = os.path.join(tmp_dir, vmcode_path)
    lib = tvm.runtime.load_module(lib_path)
    code = bytearray(open(vmcode_path, "rb").read())
    vm_exec = tvm.runtime.vm.Executable.load_exec(code, lib)
    dev = tvm.device("cuda", 0)
    rt_mod = VirtualMachine(vm_exec, dev)

out = get_output_vm(rt_mod, ["input"], [img])
print(out[0].numpy())
print(torch_res[0].numpy())
print(rt_mod.benchmark(dev, number=1, repeat=100))
