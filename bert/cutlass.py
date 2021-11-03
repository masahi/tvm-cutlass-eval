import torch
import numpy as np

import tvm
from tvm import relay
import tvm.relay.testing
from tvm.relay.op.contrib.cutlass import partition_for_cutlass
from tvm.contrib.cutlass import tune_cutlass_kernels, build_cutlass_kernels
from bert_rewrite import rewrite_reshape_gelu


def profile_and_build(mod, params, sm, tmp_dir="./tmp", lib_path="compile.so"):
    mod = partition_for_cutlass(mod)
    print(mod)
    mod, num_cutlass_partition = tune_cutlass_kernels(
        mod, sm, profile_all=True, use_multiprocessing=True, tmp_dir=tmp_dir
    )
    with tvm.transform.PassContext(opt_level=3):
        lib = relay.build(mod, target="cuda", params=params)
    lib = build_cutlass_kernels(lib, sm, tmp_dir, lib_path)
    dev = tvm.device("cuda", 0)
    rt_mod = tvm.contrib.graph_executor.GraphModule(lib["default"](dev))
    return rt_mod, dev, num_cutlass_partition


with open("models/bert_large.json", "r") as fi:
    mod = tvm.ir.load_json(fi.read())
with open("models/bert_large.params", "rb") as fi:
    params = relay.load_param_dict(fi.read())

mod = rewrite_reshape_gelu(mod)

sm  = 80
rt_mod, dev, num_partition = profile_and_build(mod, params, sm)
assert num_partition > 0

batch_size = 8
inputs = (torch.randint(high=100, size=(batch_size, 128), dtype=torch.int64),
          torch.randint(high=100, size=(batch_size, 128), dtype=torch.int64),
          torch.randint(high=100, size=(batch_size, 128), dtype=torch.int64))

np.save("input_ids", inputs[0].numpy())
np.save("attention_mask", inputs[1].numpy())
np.save("token_type_ids", inputs[2].numpy())

rt_mod.set_input("input_ids", inputs[0].numpy())
rt_mod.set_input("attention_mask", inputs[1].numpy())
rt_mod.set_input("token_type_ids", inputs[2].numpy())

print("Evaluate inference time cost...")
print(rt_mod.benchmark(dev, number=1, repeat=100))
