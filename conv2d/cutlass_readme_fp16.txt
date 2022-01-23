./tools/profiler/cutlass_profiler --kernels=cutlass_tensorop_h*fprop_optimized* --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3

=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.76273  ms
          Memory: 543.08 GiB/s

            Math: 67215.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.90089  ms
          Memory: 503.609 GiB/s

            Math: 62330.1 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.46468  ms
          Memory: 388.41 GiB/s

            Math: 48072.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.25023  ms
          Memory: 294.535 GiB/s

            Math: 36453.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=256 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.29354  ms
          Memory: 290.661 GiB/s

            Math: 35974.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=256 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.4426  ms
          Memory: 278.077 GiB/s

            Math: 34416.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=256 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 4.3086  ms
          Memory: 222.185 GiB/s

            Math: 27499.1 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=256 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 4.73919  ms
          Memory: 201.998 GiB/s

            Math: 25000.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.64627  ms
          Memory: 581.498 GiB/s

            Math: 71970.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.75804  ms
          Memory: 544.529 GiB/s

            Math: 67394.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.20202  ms
          Memory: 434.74 GiB/s

            Math: 53806.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.52377  ms
          Memory: 271.671 GiB/s

            Math: 33623.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.88051  ms
          Memory: 509.066 GiB/s

            Math: 63005.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.13294  ms
          Memory: 448.82 GiB/s

            Math: 55549 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.99495  ms
          Memory: 319.64 GiB/s

            Math: 39560.8 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 4.95903  ms
          Memory: 193.043 GiB/s

            Math: 23892.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.89816  ms
          Memory: 504.335 GiB/s

            Math: 62420 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.16958  ms
          Memory: 441.24 GiB/s

            Math: 54611 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.00721  ms
          Memory: 318.337 GiB/s

            Math: 39399.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 5.17815  ms
          Memory: 184.874 GiB/s

            Math: 22881.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.39197  ms
          Memory: 400.216 GiB/s

            Math: 49533.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.83048  ms
          Memory: 338.213 GiB/s

            Math: 41859.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.93401  ms
          Memory: 243.341 GiB/s

            Math: 30117.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 6.51853  ms
          Memory: 146.859 GiB/s

            Math: 18176.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=1 --warps_n=2 --warps_k=2 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.82143  ms
          Memory: 525.58 GiB/s

            Math: 65049.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=1 --warps_n=2 --warps_k=2 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.97679  ms
          Memory: 484.273 GiB/s

            Math: 59936.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=1 --warps_n=2 --warps_k=2 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.218  ms
          Memory: 431.607 GiB/s

            Math: 53418.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=1 --warps_n=2 --warps_k=2 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 6.20839  ms
          Memory: 154.196 GiB/s

            Math: 19084.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.57661  ms
          Memory: 607.191 GiB/s

            Math: 75150.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.86482  ms
          Memory: 513.351 GiB/s

            Math: 63535.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.15015  ms
          Memory: 445.227 GiB/s

            Math: 55104.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=256 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.96115  ms
          Memory: 323.288 GiB/s

            Math: 40012.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=256 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.16062  ms
          Memory: 302.886 GiB/s

            Math: 37487.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=256 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.50844  ms
          Memory: 272.858 GiB/s

            Math: 33770.8 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=64 --cta_k=32 --stages=4  \
                  --warps_m=4 --warps_n=1 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.71362  ms
          Memory: 558.644 GiB/s

            Math: 69141.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=64 --cta_k=32 --stages=4  \
                  --warps_m=4 --warps_n=1 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.17154  ms
          Memory: 440.843 GiB/s

            Math: 54561.8 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=256 --cta_n=64 --cta_k=32 --stages=4  \
                  --warps_m=4 --warps_n=1 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 8.68929  ms
          Memory: 110.171 GiB/s

            Math: 13635.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=256 --cta_k=32 --stages=4  \
                  --warps_m=1 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.07585  ms
          Memory: 311.233 GiB/s

            Math: 38520.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=256 --cta_k=32 --stages=4  \
                  --warps_m=1 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.38034  ms
          Memory: 283.198 GiB/s

            Math: 35050.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=256 --cta_k=32 --stages=4  \
                  --warps_m=1 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 5.30237  ms
          Memory: 180.543 GiB/s

            Math: 22345.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.49292  ms
          Memory: 641.23 GiB/s

            Math: 79363.1 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.64357  ms
          Memory: 582.455 GiB/s

            Math: 72088.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.32107  ms
          Memory: 412.442 GiB/s

            Math: 51046.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=4  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.70694  ms
          Memory: 560.833 GiB/s

            Math: 69412.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=4  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.94087  ms
          Memory: 493.236 GiB/s

            Math: 61046.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=4  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.57926  ms
          Memory: 371.155 GiB/s

            Math: 45936.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.60765  ms
          Memory: 595.469 GiB/s

            Math: 73699.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.98717  ms
          Memory: 481.742 GiB/s

            Math: 59623.8 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=128 --cta_k=32 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.67426  ms
          Memory: 357.971 GiB/s

            Math: 44304.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.90635  ms
          Memory: 502.166 GiB/s

            Math: 62151.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.35803  ms
          Memory: 405.978 GiB/s

            Math: 50246.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.67826  ms
          Memory: 260.261 GiB/s

            Math: 32211.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.88623  ms
          Memory: 507.524 GiB/s

            Math: 62814.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.36422  ms
          Memory: 404.914 GiB/s

            Math: 50114.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.64189  ms
          Memory: 262.86 GiB/s

            Math: 32533.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=32 --stages=10  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.45596  ms
          Memory: 389.789 GiB/s

            Math: 48242.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=32 --stages=10  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.37586  ms
          Memory: 283.574 GiB/s

            Math: 35097 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=32 --stages=10  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 5.28928  ms
          Memory: 180.99 GiB/s

            Math: 22400.6 GFLOP/s

































=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.88369  ms
          Memory: 508.208 GiB/s

            Math: 62899.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.15944  ms
          Memory: 443.312 GiB/s

            Math: 54867.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=128 --cta_n=64 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 6.06345  ms
          Memory: 157.881 GiB/s

            Math: 19540.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 1.77319  ms
          Memory: 539.878 GiB/s

            Math: 66819 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.03031  ms
          Memory: 471.508 GiB/s

            Math: 58357.1 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=128 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.62504  ms
          Memory: 364.682 GiB/s

            Math: 45135.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=64 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.20691  ms
          Memory: 433.776 GiB/s

            Math: 53687.1 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=64 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 2.6718  ms
          Memory: 358.3 GiB/s

            Math: 44345.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Passed

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f16:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f16 --cta_m=64 --cta_n=64 --cta_k=64 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1027899392  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 115

         Runtime: 3.72503  ms
          Memory: 256.993 GiB/s

            Math: 31807.2 GFLOP/s


=============================

CSV Results:

Problem,Provider,OperationKind,Operation,Disposition,Status,conv_kind,n,h,w,c,k,r,s,p,q,pad_h,pad_w,stride_h,stride_w,dilation_h,dilation_w,Activation,Filter,Output,conv_mode,iterator_algorithm,alpha,beta,split_k_mode,split_k_slices,eq_gemm_provider,op_class,accum,cta_m,cta_n,cta_k,stages,warps_m,warps_n,warps_k,inst_m,inst_n,inst_k,min_cc,max_cc,Bytes,Flops,Flops/Byte,Runtime,GB/s,GFLOPs
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,128,32,2,4,2,1,16,8,8,75,1024,1027899392,118482796544,115,1.76273,543.08,67215.4
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,128,32,2,4,2,1,16,8,8,75,1024,1027899392,118482796544,115,1.90089,503.609,62330.1
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,128,32,2,4,2,1,16,8,8,75,1024,1027899392,118482796544,115,2.46468,388.41,48072.4
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,128,32,2,4,2,1,16,8,8,75,1024,1027899392,118482796544,115,3.25023,294.535,36453.7
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,256,32,2,2,4,1,16,8,8,75,1024,1027899392,118482796544,115,3.29354,290.661,35974.3
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,256,32,2,2,4,1,16,8,8,75,1024,1027899392,118482796544,115,3.4426,278.077,34416.7
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,256,32,2,2,4,1,16,8,8,75,1024,1027899392,118482796544,115,4.3086,222.185,27499.1
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,256,32,2,2,4,1,16,8,8,75,1024,1027899392,118482796544,115,4.73919,201.998,25000.7
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,1.64627,581.498,71970.3
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,1.75804,544.529,67394.7
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,2.20202,434.74,53806.4
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,3.52377,271.671,33623.9
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,1.88051,509.066,63005.5
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,2.13294,448.82,55549
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,2.99495,319.64,39560.8
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,4.95903,193.043,23892.3
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,1.89816,504.335,62420
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,2.16958,441.24,54611
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,3.00721,318.337,39399.6
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,5.17815,184.874,22881.3
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,2.39197,400.216,49533.5
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,2.83048,338.213,41859.6
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,3.93401,243.341,30117.5
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,32,2,2,2,1,16,8,8,75,1024,1027899392,118482796544,115,6.51853,146.859,18176.3
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,64,2,1,2,2,16,8,8,75,1024,1027899392,118482796544,115,1.82143,525.58,65049.4
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,64,2,1,2,2,16,8,8,75,1024,1027899392,118482796544,115,1.97679,484.273,59936.9
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,64,2,1,2,2,16,8,8,75,1024,1027899392,118482796544,115,2.218,431.607,53418.6
1,CUTLASS,conv2d,cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,64,2,1,2,2,16,8,8,75,1024,1027899392,118482796544,115,6.20839,154.196,19084.3
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,128,32,3,4,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.57661,607.191,75150.2
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,128,32,3,4,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.86482,513.351,63535.9
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,128,32,3,4,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.15015,445.227,55104.3
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,256,32,3,2,4,1,16,8,16,80,1024,1027899392,118482796544,115,2.96115,323.288,40012.4
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,256,32,3,2,4,1,16,8,16,80,1024,1027899392,118482796544,115,3.16062,302.886,37487.2
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,256,32,3,2,4,1,16,8,16,80,1024,1027899392,118482796544,115,3.50844,272.858,33770.8
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,64,32,4,4,1,1,16,8,16,80,1024,1027899392,118482796544,115,1.71362,558.644,69141.7
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,64,32,4,4,1,1,16,8,16,80,1024,1027899392,118482796544,115,2.17154,440.843,54561.8
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,256,64,32,4,4,1,1,16,8,16,80,1024,1027899392,118482796544,115,8.68929,110.171,13635.5
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,256,32,4,1,4,1,16,8,16,80,1024,1027899392,118482796544,115,3.07585,311.233,38520.3
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,256,32,4,1,4,1,16,8,16,80,1024,1027899392,118482796544,115,3.38034,283.198,35050.6
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,256,32,4,1,4,1,16,8,16,80,1024,1027899392,118482796544,115,5.30237,180.543,22345.2
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,3,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.49292,641.23,79363.1
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,3,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.64357,582.455,72088.6
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,3,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.32107,412.442,51046.6
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,4,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.70694,560.833,69412.5
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,4,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.94087,493.236,61046.2
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,4,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.57926,371.155,45936.7
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,5,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.60765,595.469,73699.4
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,5,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.98717,481.742,59623.8
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,128,32,5,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.67426,357.971,44304.9
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,32,6,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.90635,502.166,62151.6
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,32,6,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.35803,405.978,50246.6
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,32,6,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,3.67826,260.261,32211.6
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,32,6,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.88623,507.524,62814.7
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,32,6,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.36422,404.914,50114.9
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,32,6,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,3.64189,262.86,32533.4
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,32,10,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.45596,389.789,48242.9
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,32,10,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,3.37586,283.574,35097
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,32,10,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,5.28928,180.99,22400.6
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,64,3,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.88369,508.208,62899.3
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,64,3,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.15944,443.312,54867.4
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,128,64,64,3,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,6.06345,157.881,19540.5
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,64,3,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,1.77319,539.878,66819
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,64,3,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.03031,471.508,58357.1
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,128,64,3,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.62504,364.682,45135.6
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,64,5,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.20691,433.776,53687.1
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,64,5,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,2.6718,358.3,44345.6
1,CUTLASS,conv2d,cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f16:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f16,64,64,64,5,2,2,1,16,8,16,80,1024,1027899392,118482796544,115,3.72503,256.993,31807.2
