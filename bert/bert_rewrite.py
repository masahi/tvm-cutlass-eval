from tvm.relay import op as _op
from tvm import relay
from tvm.relay import expr as _expr
from tvm.relay.dataflow_pattern import *


def reshape_gelu_pattern(inp, bias, inv_sqrt):
    reshape = is_op("reshape")(inp)
    add = is_op("add")(reshape, bias) | is_op("nn.bias_add")(reshape, bias)
    mul = is_op("multiply")(add, inv_sqrt)
    cast_fp32 = is_op("cast")(mul)
    erf = is_op("erf")(cast_fp32)
    mul = is_op("multiply")(erf, is_constant())
    add_cast_fp32 = is_op("cast")(add)
    mul_add_half = is_op("add")(is_constant(), mul)
    mul_fp32 = is_op("multiply")(add_cast_fp32, mul_add_half)
    reshape = is_op("reshape")(mul_fp32)
    return is_op("cast")(reshape)


def convert_reshape_gelu(inp, bias, inv_sqrt):
    bias_out = inp + bias
    mul = bias_out * inv_sqrt
    erf = _op.cast(_op.erf(_op.cast(mul, "float32")), "float16")
    mul_half = erf * relay.const(0.5, dtype="float16")
    return (mul_half + relay.const(0.5, dtype="float16")) * bias_out


class ReshapeGeLURewrite(DFPatternCallback):
    def __init__(self):
        super().__init__()
        self.inp = wildcard()
        self.bias = wildcard()
        self.inv_sqrt = wildcard()
        self.pattern = reshape_gelu_pattern(self.inp, self.bias, self.inv_sqrt)

    def callback(self, pre, post, node_map):
        inp = node_map[self.inp][0]
        bias = node_map[self.bias][0]
        inv_sqrt = node_map[self.inv_sqrt][0]
        return convert_reshape_gelu(inp, bias, inv_sqrt)


def rewrite_reshape_gelu(mod):
    mod["main"] = rewrite(ReshapeGeLURewrite(), mod["main"])
    return mod
