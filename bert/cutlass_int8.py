import torch

import tvm
from tvm import relay
import tvm.relay.testing
from tvm.relay.op.contrib.cutlass import partition_for_cutlass
from tvm.contrib.cutlass import tune_cutlass_kernels, build_cutlass_kernels
from tvm.meta_schedule.testing.tlcbench import load_quantized_bert_base


def profile_and_build(mod, params, sm, tmp_dir="./tmp", lib_path="compile.so"):
    mod = partition_for_cutlass(mod)
    print(mod)
    mod, num_cutlass_partition = tune_cutlass_kernels(
        mod, sm, find_first_valid=False, use_multiprocessing=True, tmp_dir=tmp_dir
    )
    with tvm.transform.PassContext(opt_level=3):
        lib = relay.build(mod, target="cuda", params=params)
    lib = build_cutlass_kernels(lib, sm, tmp_dir, lib_path)
    dev = tvm.device("cuda", 0)
    rt_mod = tvm.contrib.graph_executor.GraphModule(lib["default"](dev))
    return rt_mod, dev, num_cutlass_partition


batch_size = 8
seq_len = 384

mod, params, input_info = load_quantized_bert_base(seq_len=seq_len, batch_size=8)

with tvm.transform.PassContext(opt_level=3):
    mod = relay.qnn.transform.CanonicalizeOps()(mod)

sm  = 80
rt_mod, dev, num_partition = profile_and_build(mod, params, sm)
assert num_partition > 0

inputs = (torch.randint(high=100, size=(batch_size, seq_len), dtype=torch.int64),
          torch.randint(high=100, size=(batch_size, seq_len), dtype=torch.int64),
          torch.randint(high=100, size=(batch_size, seq_len), dtype=torch.int64))

for i, (name, _) in enumerate(input_info):
    rt_mod.set_input(name, inputs[i].numpy())

print("Evaluate inference time cost...")
print(rt_mod.benchmark(dev, number=1, repeat=100))
