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
from tvm.relay.build_module import bind_params_by_name
from tvm.relay import transform


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

img_url = "https://github.com/dmlc/mxnet.js/blob/main/data/cat.png?raw=true"
img_path = download_testdata(img_url, "cat.png", module="data")
img = Image.open(img_path).resize((224, 224))

my_preprocess = transforms.Compose(
    [
        transforms.Resize(256),
        transforms.CenterCrop(224),
        transforms.ToTensor(),
        transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225]),
    ]
)
img = my_preprocess(img)
img = np.expand_dims(img, 0)

batch_size = 8
img = np.tile(img, (batch_size, 1, 1, 1))

sm  = 80
model = torchvision.models.resnet50(pretrained=True).eval()
input_name = "input0"
input_data = torch.from_numpy(img)
scripted_model = torch.jit.trace(model, input_data).eval()

with torch.no_grad():
    torch_res = scripted_model(input_data).numpy()

shape_list = [(input_name, img.shape)]
mod, params = relay.frontend.from_pytorch(scripted_model, shape_list)

mod = convert_conv2d_layout(mod, {"nn.conv2d": ["NHWC", "OHWI"]})
mod = ToMixedPrecision("float16")(mod)
# rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_resnet50_unfused.so", precompiled=True)
rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_resnet50_cudnn.so", precompiled=False, use_cudnn=True)
assert num_partition > 0

rt_mod.set_input(input_name, img)
rt_mod.run()
tvm_res = rt_mod.get_output(0).numpy()

print("Evaluate inference time cost...")
print(rt_mod.benchmark(dev, number=1, repeat=100))
