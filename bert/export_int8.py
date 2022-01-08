import argparse
import numpy as np
import os
from numpy.lib import ufunclike
import tvm
from tvm import relay, auto_scheduler
import tvm.relay.testing
from tvm.contrib import graph_runtime
import onnx
from tvm.relay import transform

from tvm.contrib.utils import tempdir
import tvm.contrib.graph_runtime as runtime

name = "models/bert_large_v1_1_fake_quant.onnx"

onnx_model = onnx.load(name)
batch_size = 1
seq_len = 384

shape_dict = {
    "input_ids": (batch_size, seq_len),
    "attention_mask": (batch_size, seq_len),
    "token_type_ids": (batch_size, seq_len),
}

mod, params = relay.frontend.from_onnx(onnx_model, shape_dict)

seq = tvm.transform.Sequential(
    [
        transform.InferType(),
        transform.FoldConstant(),
        transform.SimplifyInference(),
        transform.FoldScaleAxis(),
    ]
)

with tvm.transform.PassContext(opt_level=3):
    mod = seq(mod)

print(mod)

with open("models/bert_large_int8_tmp.json", "w") as fo:
    fo.write(tvm.ir.save_json(mod))

with open("models/bert_large_int8_tmp.params", "wb") as fo:
    fo.write(relay.save_param_dict(params))

# mod = tvm.relay.transform.FakeQuantizationToInteger()(mod)
# print(mod)
