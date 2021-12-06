import pandas

table = pandas.read_csv("resnet50_cutlass_profiler_result.csv")
idx = table.groupby(["n","h","w","c","k","r","s","p","q","pad_h","pad_w","stride_h","stride_w","dilation_h","dilation_w"], sort=False)["Runtime"].transform(min) == table["Runtime"]
operations = table[idx][["n","h","w","c","k","r","s","p","q","pad_h","pad_w","stride_h","stride_w", "Operation", "Runtime"]]

k = 19
size = 58

for i in range(k):
    df = table[size*i:size*(i+1)]
    df.to_csv(f'cutlass_result_{i+1}.csv', index=False)
