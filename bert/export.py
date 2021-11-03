import logging
import numpy as np
import os
import torch

from transformers import BertForSequenceClassification

import tvm
from tvm import relay
from tvm.relay.transform import ToMixedPrecision

model = BertForSequenceClassification.from_pretrained('bert-large-uncased')

batch_size = 8
inputs = (torch.ones(batch_size, 128, dtype=torch.int64),
          torch.ones(batch_size, 128, dtype=torch.int64),
          torch.ones(batch_size, 128, dtype=torch.int64))

input_shapes = [("input_ids", (inputs[0].shape, "int64")),
                ("attention_mask", (inputs[1].shape, "int64")),
                ("token_type_ids", (inputs[2].shape, "int64"))]

with torch.no_grad():
    out = model(*inputs)

class TraceWrapper(torch.nn.Module):
    def __init__(self, model):
        super().__init__()
        self.model = model

    def forward(self, *inp):
        out = self.model(*inp)
        return out["logits"]


script_module = torch.jit.trace(TraceWrapper(model), inputs).eval()
mod, params = relay.frontend.from_pytorch(script_module, input_shapes)
mod = ToMixedPrecision("float16")(mod)

os.makedirs("models", exist_ok=True)

with open("models/bert_large.json", "w") as fo:
    fo.write(tvm.ir.save_json(mod))
with open("models/bert_large.params", "wb") as fo:
    fo.write(relay.save_param_dict(params))
