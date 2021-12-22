import numpy as np
from torchvision import transforms
from PIL import Image
import tvm
from tvm import relay, autotvm
import tvm.relay.testing
from tvm.relay.op.contrib.cutlass import partition_for_cutlass
from tvm.contrib.cutlass import tune_cutlass_kernels, build_cutlass_kernels
import onnx
from tvm.relay.transform import ToMixedPrecision
from tvm.contrib.download import download_testdata


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
        mod = convert_conv2d_layout(mod, {"nn.conv2d": ["NHWC", "default"]})
        print(mod)
        # return None, None, None        
        mod, num_cutlass_partition = tune_cutlass_kernels(
            mod, sm, profile_all=False, use_multiprocessing=True, tmp_dir=tmp_dir
        )
        # print(mod)
        # return None, None, None
        with autotvm.apply_history_best("autotvm_log.txt"):
            with tvm.transform.PassContext(opt_level=3):
                lib = relay.build(mod, target="cuda", params=params)
        lib = build_cutlass_kernels(lib, sm, tmp_dir, lib_path, use_fast_math=False)
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
img = np.transpose(img, (0, 2, 3, 1))

batch_size = 1
img = np.tile(img, (batch_size, 1, 1, 1))

sm  = 80
precompiled = False
input_name = "input_1:0"

if not precompiled:
    import os
    if not os.path.exists("models/effnetv2_fp16.json"):
        model = onnx.load("model/effnetv2.onnx")
        input_shape = (8, 224, 224, 3)
        shape_dict = {input_name: input_shape}
        mod, params = relay.frontend.from_onnx(model, shape_dict)
        # mod = relay.transform.FoldExplicitPadding()(mod)
        mod = convert_conv2d_layout(mod, {"nn.conv2d": ["NHWC", "OHWI"]})
        # mod = convert_conv2d_layout(mod, {"nn.conv2d": ["NHWC", "default"]})
        mod = ToMixedPrecision("float16")(mod)

        with open("models/effnetv2_fp16.json", "w") as fo:
            fo.write(tvm.ir.save_json(mod))
        with open("models/effnetv2.params", "wb") as fo:
            fo.write(relay.save_param_dict(params))

    # model_dir = "models/"
    model_dir = "models_pad_folded/"
    with open(model_dir + "effnetv2_fp16.json", "r") as fi:
        mod = tvm.ir.load_json(fi.read())
    with open(model_dir + "effnetv2.params", "rb") as fi:
        params = relay.load_param_dict(fi.read())
    # print(mod)
else:
    mod, params = None, None

rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_effnetv2_residual_fusion_batch1.so", precompiled=precompiled)
# rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_effnetv2_fused.so", precompiled=precompiled)
# rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_effnetv2_unfused.so", precompiled=precompiled)
# rt_mod, dev, num_partition = profile_and_build(mod, params, sm, tmp_dir="../maskrcnn/tmp", lib_path="compile_effnetv2_cudnn.so", precompiled=precompiled, use_cudnn=True)
assert num_partition > 0

rt_mod.set_input(input_name, img)
rt_mod.run()
tvm_res = rt_mod.get_output(0).numpy()
print(tvm_res[0])
print("Evaluate inference time cost...")
print(rt_mod.benchmark(dev, number=1, repeat=100))

# import onnxruntime
# ort_sess = onnxruntime.InferenceSession("model/effnetv2.onnx")
# onnx_input_dict = {input_name: img.astype("float32")}
# ort_output = ort_sess.run(None, onnx_input_dict)
# print(ort_output[0][0])
