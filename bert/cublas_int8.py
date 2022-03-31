import torch
import tvm
from tvm import relay
import tvm.relay.testing
import tvm.contrib.graph_executor as runtime
from tvm.meta_schedule.testing.tlcbench import load_quantized_bert_base


batch_size = 8
seq_len = 384

mod, params, input_info = load_quantized_bert_base(seq_len=seq_len, batch_size=8)

target = "cuda -libs=cublas"

with tvm.transform.PassContext(opt_level=3):
    lib = relay.build_module.build(mod, target=target, params=params)

dev = tvm.device(target, 0)
module = runtime.GraphModule(lib["default"](dev))

inputs = (torch.randint(high=100, size=(batch_size, seq_len), dtype=torch.int64),
          torch.randint(high=100, size=(batch_size, seq_len), dtype=torch.int64),
          torch.randint(high=100, size=(batch_size, seq_len), dtype=torch.int64))

for i, (name, _) in enumerate(input_info):
    module.set_input(name, inputs[i].numpy())

print("Evaluate inference time cost...")
print(module.benchmark(dev, number=1, repeat=100))
