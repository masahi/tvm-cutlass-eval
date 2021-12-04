# PyTorch imports
import torch
import torchvision

import tvm
from tvm import relay, auto_scheduler
from tvm.runtime import profiler_vm
from tvm.runtime.vm import VirtualMachine
from tvm.contrib.download import download
from tvm.relay.frontend.pytorch_utils import (
    rewrite_nms_to_batched_nms,
    rewrite_batched_nms_with_max_out_size,
    rewrite_scatter_to_gather
)
from tvm.relay.transform import ToMixedPrecision

import numpy as np
import cv2


in_size = 512

input_shape = (1, 3, in_size, in_size)


def do_trace(model, inp):
    model_trace = torch.jit.trace(model, inp)
    model_trace.eval()
    return model_trace


def dict_to_tuple(out_dict):
    if "masks" in out_dict.keys():
        return out_dict["boxes"], out_dict["scores"], out_dict["labels"], out_dict["masks"]
    return out_dict["boxes"], out_dict["scores"], out_dict["labels"]


class TraceWrapper(torch.nn.Module):
    def __init__(self, model):
        super().__init__()
        self.model = model

    def forward(self, images):
        original_image_sizes = []
        for img in images:
            val = img.shape[-2:]
            assert len(val) == 2
            original_image_sizes.append((val[0], val[1]))

        images, _ = self.model.transform(images, None)
        features = self.model.backbone(images.tensors)
        proposals, _ = self.model.rpn(images, features, None)
        detections, _  = self.model.roi_heads(features, proposals, images.image_sizes, None)
        return dict_to_tuple(detections[0])


def get_input(in_size):
    img_path = "test_street_small.jpg"
    img_url = (
        "https://raw.githubusercontent.com/dmlc/web-data/" "master/gluoncv/detection/street_small.jpg"
    )
    download(img_url, img_path)

    img = cv2.imread(img_path).astype("float32")
    img = cv2.resize(img, (in_size, in_size))
    img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    img = np.transpose(img / 255.0, [2, 0, 1])
    img = np.expand_dims(img, axis=0)
    return img


num_iters = 50

model_func = torchvision.models.detection.maskrcnn_resnet50_fpn
model = TraceWrapper(model_func(pretrained=True, rpn_pre_nms_top_n_test=1000))

model.eval()
img = get_input(in_size)
inp = torch.from_numpy(img)

with torch.no_grad():
    out = model(inp)
    script_module = do_trace(model, inp)


def bench_tvm():
    input_name = "input0"
    shape_list = [(input_name, input_shape)]
    mod, params = relay.frontend.from_pytorch(script_module, shape_list)

    mod = rewrite_nms_to_batched_nms(mod)
    mod = rewrite_batched_nms_with_max_out_size(mod)
    mod = rewrite_scatter_to_gather(mod, 4)

    target = "opencl"

    with tvm.transform.PassContext(opt_level=3):
        desired_layouts = {'nn.conv2d': ['NHWC', 'default'], "vision.roi_align": ["NHWC", "default"]}
        seq = tvm.transform.Sequential([relay.transform.ConvertLayout(desired_layouts)])
        mod = seq(mod)
        mod = ToMixedPrecision("float16")(mod)
        print(relay.transform.InferType()(mod))
        return
        vm_exec = relay.vm.compile(mod, target=target, params=params)

    print("compile finished")

    ctx = tvm.device(target, 0)
    # vm = profiler_vm.VirtualMachineProfiler(vm_exec, ctx)
    vm = VirtualMachine(vm_exec, ctx)
    vm.set_input("main", **{input_name: img})
    vm.run()
    # # print("\n{}".format(vm.get_stat()))

    # ftimer = vm.module.time_evaluator("invoke", ctx, number=1, repeat=num_iters)
    # print(ftimer("main"))

bench_tvm()
