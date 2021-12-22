import torch
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
        return out["out"]


def profile_and_build(mod, params, sm, tmp_dir="./tmp", lib_path="compile.so", precompiled=False, use_cudnn=False):
    dev = tvm.device("cuda", 0)
    if precompiled:
        lib = tvm.runtime.load_module(lib_path)
        rt_mod = tvm.contrib.graph_executor.GraphModule(lib["default"](dev))
        return rt_mod, dev, 1
    elif use_cudnn:
        with tvm.transform.PassContext(opt_level=3):
            lib = relay.build(mod, target="cuda -libs=cudnn", params=params)
        lib.export_library(lib_path, workspace_dir=tmp_dir)
        rt_mod = tvm.contrib.graph_executor.GraphModule(lib["default"](dev))
        return rt_mod, dev, 1
    else:
        mod = partition_for_cutlass(mod, params)
        print(mod)
        # return None
        mod = convert_conv2d_layout(mod, {"nn.conv2d": ["NHWC", "default"]})
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


deeplabv3 = torchvision.models.segmentation.deeplabv3_mobilenet_v3_large(pretrained=True)
model = TraceWrapper(deeplabv3.eval())

in_size = 512
img = np.tile(get_input(in_size), (8, 1, 1, 1))

inp = torch.from_numpy(img)

with torch.no_grad():
    trace = torch.jit.trace(model, inp)
    torch_res = model(inp)

# batch_size = 8
# img = np.tile(img, (batch_size, 1, 1, 1))
input_name = "input"
mod, params = relay.frontend.from_pytorch(trace, [(input_name, inp.shape)])

mod = convert_conv2d_layout(mod, {"nn.conv2d": ["NHWC", "OHWI"]})
mod = ToMixedPrecision("float16")(mod)

sm  = 80
rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_fused_residual_block_not_heavy.so", precompiled=False)
# # rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_cudnn.so", precompiled=True, use_cudnn=True)
# assert num_partition > 0

rt_mod.set_input(input_name, inp.numpy())
rt_mod.run()
tvm_res = rt_mod.get_output(0).numpy()
print(tvm_res[0])
print(torch_res.numpy()[0])
# np.save("cutlass_res.npy", tvm_res)

print("Evaluate inference time cost...")
print(rt_mod.benchmark(dev, number=1, repeat=100))
