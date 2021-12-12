import torch
import os
import numpy as np
from torchvision import transforms
from PIL import Image
import tvm
from tvm import relay
import tvm.relay.testing
from tvm.relay.op.contrib.cutlass import partition_for_cutlass
from tvm.contrib.cutlass import tune_cutlass_kernels, build_cutlass_kernels
import torchvision
from tvm.relay.transform import ToMixedPrecision
from tvm.contrib.download import download_testdata


class TraceWrapper(torch.nn.Module):
    def __init__(self, model):
        super().__init__()
        self.model = model

    def forward(self, inp):
        out = self.model(inp)
        return (out["pred_logits"], out["pred_boxes"])


def get_torch_outputs(model, inp):
    with torch.no_grad():
        raw_outputs = model(inp)
        outputs, _ = torch.jit._flatten(raw_outputs)
        return [output.cpu().numpy() for output in outputs]


def profile_and_build(mod, params, sm, tmp_dir="./tmp", lib_path="compile.so", precompiled=False, use_cudnn=False):
    dev = tvm.device("cuda", 0)
    if precompiled:
        lib = tvm.runtime.load_module(lib_path)
        rt_mod = tvm.contrib.graph_executor.GraphModule(lib["default"](dev))
        return rt_mod, dev, 1
    elif use_cudnn:
        with tvm.transform.PassContext(opt_level=3):
            lib = relay.build(mod, target="cuda -libs=cudnn,cublas", params=params)
        lib.export_library(lib_path, workspace_dir=tmp_dir)
        rt_mod = tvm.contrib.graph_executor.GraphModule(lib["default"](dev))
        return rt_mod, dev, 1
    else:
        mod = partition_for_cutlass(mod)
        print(mod)
        mod, num_cutlass_partition = tune_cutlass_kernels(
            mod, sm, profile_all=True, use_multiprocessing=True, tmp_dir=tmp_dir
        )
        with tvm.transform.PassContext(opt_level=3):
            lib = relay.build(mod, target="cuda", params=params)
        lib = build_cutlass_kernels(lib, sm, tmp_dir, lib_path)
        rt_mod = tvm.contrib.graph_executor.GraphModule(lib["default"](dev))
        return rt_mod, dev, num_cutlass_partition


def convert_conv2d_layout(mod, desired_layouts):
    with tvm.transform.PassContext(opt_level=3):
        seq = tvm.transform.Sequential([relay.transform.ConvertLayout(desired_layouts)])
        return seq(mod)


inp = torch.rand(8, 3, 750, 800)
input_name = "input"

precompiled = True

detr = torch.hub.load("facebookresearch/detr", "detr_resnet50", pretrained=True).eval()
model = TraceWrapper(detr.eval())

with torch.no_grad():
    trace = torch.jit.trace(model, inp)
    torch_res = model(inp)

if not precompiled:
    if not os.path.exists("models/detr_fp16.json"):
        mod, params = relay.frontend.from_pytorch(trace, [(input_name, inp.shape)])
        mod = convert_conv2d_layout(mod, {"nn.conv2d": ["NHWC", "OHWI"]})
        mod = ToMixedPrecision("float16")(mod)

        os.makedirs("models", exist_ok=True)

        with open("models/detr_fp16.json", "w") as fo:
            fo.write(tvm.ir.save_json(mod))
        with open("models/detr_fp16.params", "wb") as fo:
            fo.write(relay.save_param_dict(params))

    with open("models/detr_fp16.json", "r") as fi:
        mod = tvm.ir.load_json(fi.read())
    with open("models/detr_fp16.params", "rb") as fi:
        params = relay.load_param_dict(fi.read())
else:
    mod, params = None, None

sm  = 80
# rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_unfused.so", precompiled=precompiled)
rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_cudnn.so", precompiled=precompiled, use_cudnn=True)
assert num_partition > 0

rt_mod.set_input(input_name, inp.numpy())
rt_mod.run()
tvm_res = rt_mod.get_output(0).numpy()
print(tvm_res[0])
print(torch_res[0][0].numpy())
print("Evaluate inference time cost...")
print(rt_mod.benchmark(dev, number=1, repeat=100))
