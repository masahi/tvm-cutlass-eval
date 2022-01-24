


=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_256x128_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.63979  ms
          Memory: 289.305 GiB/s

            Math: 32552.1 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_256x128_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.52463  ms
          Memory: 298.757 GiB/s

            Math: 33615.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_256x128_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.25439  ms
          Memory: 323.565 GiB/s

            Math: 36407 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_256x128_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 14.1619  ms
          Memory: 74.355 GiB/s

            Math: 8366.29 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x256_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=256 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 6.50669  ms
          Memory: 161.835 GiB/s

            Math: 18209.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x256_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=256 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 6.59475  ms
          Memory: 159.674 GiB/s

            Math: 17966.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x256_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=256 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 7.08406  ms
          Memory: 148.645 GiB/s

            Math: 16725.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x256_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=256 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 7.53001  ms
          Memory: 139.842 GiB/s

            Math: 15734.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x128_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.16213  ms
          Memory: 333.006 GiB/s

            Math: 37469.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x128_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.01349  ms
          Memory: 349.432 GiB/s

            Math: 39317.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x128_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.20366  ms
          Memory: 328.69 GiB/s

            Math: 36983.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x128_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 13.5174  ms
          Memory: 77.9005 GiB/s

            Math: 8765.24 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x128_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.96771  ms
          Memory: 354.822 GiB/s

            Math: 39924 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x128_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.94662  ms
          Memory: 357.361 GiB/s

            Math: 40209.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x128_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.09805  ms
          Memory: 339.894 GiB/s

            Math: 38244.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x128_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 5.30429  ms
          Memory: 198.52 GiB/s

            Math: 22337.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x64_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.90796  ms
          Memory: 362.113 GiB/s

            Math: 40744.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x64_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.96623  ms
          Memory: 354.999 GiB/s

            Math: 39943.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x64_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.7921  ms
          Memory: 277.685 GiB/s

            Math: 31244.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_128x64_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 5.84617  ms
          Memory: 180.119 GiB/s

            Math: 20266.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x64_32x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.99535  ms
          Memory: 351.547 GiB/s

            Math: 39555.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x64_32x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.05212  ms
          Memory: 345.009 GiB/s

            Math: 38819.8 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x64_32x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.95798  ms
          Memory: 266.047 GiB/s

            Math: 29935.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x64_32x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=32 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 6.6258  ms
          Memory: 158.926 GiB/s

            Math: 17882 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x128_64x2_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=1 --warps_n=2 --warps_k=2 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.83183  ms
          Memory: 371.848 GiB/s

            Math: 41839.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x128_64x2_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=1 --warps_n=2 --warps_k=2 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.99075  ms
          Memory: 352.089 GiB/s

            Math: 39616.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x128_64x2_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=1 --warps_n=2 --warps_k=2 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.372  ms
          Memory: 312.28 GiB/s

            Math: 35137.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s1688fprop_optimized_f16_64x128_64x2_nhwc_align1

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=1 --warps_n=2 --warps_k=2 --inst_m=16 --inst_n=8 --inst_k=8 --min_cc=75 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 27.5402  ms
          Memory: 38.2354 GiB/s

            Math: 4302.18 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_256x128_32x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.95762  ms
          Memory: 356.033 GiB/s

            Math: 40060.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_256x128_32x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.03106  ms
          Memory: 347.406 GiB/s

            Math: 39089.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_256x128_32x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.2381  ms
          Memory: 325.193 GiB/s

            Math: 36590.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x256_32x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=256 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 5.6279  ms
          Memory: 187.105 GiB/s

            Math: 21052.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x256_32x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=256 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 6.00349  ms
          Memory: 175.399 GiB/s

            Math: 19735.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x256_32x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=256 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 5.84705  ms
          Memory: 180.092 GiB/s

            Math: 20263.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_256x64_32x4_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=64 --cta_k=32 --stages=4  \
                  --warps_m=4 --warps_n=1 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.1484  ms
          Memory: 334.458 GiB/s

            Math: 37632.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_256x64_32x4_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=64 --cta_k=32 --stages=4  \
                  --warps_m=4 --warps_n=1 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 4.68378  ms
          Memory: 224.821 GiB/s

            Math: 25296.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_256x64_32x4_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=256 --cta_n=64 --cta_k=32 --stages=4  \
                  --warps_m=4 --warps_n=1 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 34.3474  ms
          Memory: 30.6576 GiB/s

            Math: 3449.54 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x256_32x4_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=256 --cta_k=32 --stages=4  \
                  --warps_m=1 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 5.69418  ms
          Memory: 184.927 GiB/s

            Math: 20807.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x256_32x4_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=256 --cta_k=32 --stages=4  \
                  --warps_m=1 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 6.08112  ms
          Memory: 173.16 GiB/s

            Math: 19483.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x256_32x4_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=256 --cta_k=32 --stages=4  \
                  --warps_m=1 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 6.9311  ms
          Memory: 151.925 GiB/s

            Math: 17094.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.72812  ms
          Memory: 385.984 GiB/s

            Math: 43430.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.78632  ms
          Memory: 377.921 GiB/s

            Math: 42523 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.10222  ms
          Memory: 339.437 GiB/s

            Math: 38192.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x4_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=4  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.94576  ms
          Memory: 357.466 GiB/s

            Math: 40221.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x4_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=4  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.46514  ms
          Memory: 303.887 GiB/s

            Math: 34192.8 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x4_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=4  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.79656  ms
          Memory: 277.359 GiB/s

            Math: 31207.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x5_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 2.94568  ms
          Memory: 357.476 GiB/s

            Math: 40222.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x5_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.50115  ms
          Memory: 300.761 GiB/s

            Math: 33841.1 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x5_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=128 --cta_k=32 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.8809  ms
          Memory: 271.331 GiB/s

            Math: 30529.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x64_32x6_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.09521  ms
          Memory: 340.206 GiB/s

            Math: 38279.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x64_32x6_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.55652  ms
          Memory: 296.079 GiB/s

            Math: 33314.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x64_32x6_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 4.21302  ms
          Memory: 249.941 GiB/s

            Math: 28123 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x128_32x6_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.00873  ms
          Memory: 349.985 GiB/s

            Math: 39379.7 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x128_32x6_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.57372  ms
          Memory: 294.654 GiB/s

            Math: 33153.9 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x128_32x6_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=32 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.98563  ms
          Memory: 264.201 GiB/s

            Math: 29727.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x64_32x10_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=32 --stages=10  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.31793  ms
          Memory: 317.369 GiB/s

            Math: 35709.8 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x64_32x10_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=32 --stages=10  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.91035  ms
          Memory: 269.288 GiB/s

            Math: 30299.8 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x64_32x10_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=32 --stages=10  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 5.94138  ms
          Memory: 177.233 GiB/s

            Math: 19942 GFLOP/s

































=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x64_64x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.07099  ms
          Memory: 342.89 GiB/s

            Math: 38581.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x64_64x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.23696  ms
          Memory: 325.308 GiB/s

            Math: 36603.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_128x64_64x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=128 --cta_n=64 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 5.8011  ms
          Memory: 181.519 GiB/s

            Math: 20424.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x128_64x3_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.05044  ms
          Memory: 345.199 GiB/s

            Math: 38841.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x128_64x3_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.14193  ms
          Memory: 335.147 GiB/s

            Math: 37710.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x128_64x3_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=128 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.37466  ms
          Memory: 312.035 GiB/s

            Math: 35109.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x64_64x5_nhwc_align8

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=64 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.25107  ms
          Memory: 323.896 GiB/s

            Math: 36444.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x64_64x5_nhwc_align4

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=64 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 3.42773  ms
          Memory: 307.203 GiB/s

            Math: 34566 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_s16816fprop_optimized_f16_64x64_64x5_nhwc_align2

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=f16:nhwc --Filter=f16:nhwc --Output=f32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=f32 --cta_m=64 --cta_n=64 --cta_k=64 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=16 --min_cc=80 --max_cc=1024

           Bytes: 1130659840  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 104

         Runtime: 4.53768  ms
          Memory: 232.059 GiB/s

            Math: 26110.9 GFLOP/s


=============================

CSV Results:

Problem,Provider,OperationKind,Operation,Disposition,Status,conv_kind,n,h,w,c,k,r,s,p,q,pad_h,pad_w,stride_h,stride_w,dilation_h,dilation_w,Activation,Filter,Output,conv_mode,iterator_algorithm,alpha,beta,split_k_mode,split_k_slices,eq_gemm_provider,op_class,accum,cta_m,cta_n,cta_k,stages,warps_m,warps_n,warps_k,inst_m,inst_n,inst_k,min_cc,max_cc,Bytes,Flops,Flops/Byte,Runtime,GB/s,GFLOPs
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_256x128_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,128,32,2,4,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.63979,289.305,32552.1
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_256x128_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,128,32,2,4,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.52463,298.757,33615.7
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_256x128_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,128,32,2,4,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.25439,323.565,36407
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_256x128_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,128,32,2,4,2,1,16,8,8,75,1024,1130659840,118482796544,104,14.1619,74.355,8366.29
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x256_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,256,32,2,2,4,1,16,8,8,75,1024,1130659840,118482796544,104,6.50669,161.835,18209.4
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x256_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,256,32,2,2,4,1,16,8,8,75,1024,1130659840,118482796544,104,6.59475,159.674,17966.2
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x256_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,256,32,2,2,4,1,16,8,8,75,1024,1130659840,118482796544,104,7.08406,148.645,16725.3
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x256_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,256,32,2,2,4,1,16,8,8,75,1024,1130659840,118482796544,104,7.53001,139.842,15734.7
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x128_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.16213,333.006,37469.3
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x128_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.01349,349.432,39317.5
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x128_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.20366,328.69,36983.6
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x128_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,13.5174,77.9005,8765.24
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x128_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,2.96771,354.822,39924
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x128_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,2.94662,357.361,40209.7
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x128_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.09805,339.894,38244.3
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x128_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,5.30429,198.52,22337.2
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x64_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,2.90796,362.113,40744.4
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x64_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,2.96623,354.999,39943.9
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x64_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.7921,277.685,31244.7
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_128x64_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,5.84617,180.119,20266.7
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x64_32x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,2.99535,351.547,39555.5
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x64_32x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.05212,345.009,38819.8
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x64_32x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,3.95798,266.047,29935.2
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x64_32x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,32,2,2,2,1,16,8,8,75,1024,1130659840,118482796544,104,6.6258,158.926,17882
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x128_64x2_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,64,2,1,2,2,16,8,8,75,1024,1130659840,118482796544,104,2.83183,371.848,41839.7
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x128_64x2_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,64,2,1,2,2,16,8,8,75,1024,1130659840,118482796544,104,2.99075,352.089,39616.5
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x128_64x2_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,64,2,1,2,2,16,8,8,75,1024,1130659840,118482796544,104,3.372,312.28,35137.2
1,CUTLASS,conv2d,cutlass_tensorop_s1688fprop_optimized_f16_64x128_64x2_nhwc_align1,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,64,2,1,2,2,16,8,8,75,1024,1130659840,118482796544,104,27.5402,38.2354,4302.18
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_256x128_32x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,128,32,3,4,2,1,16,8,16,80,1024,1130659840,118482796544,104,2.95762,356.033,40060.2
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_256x128_32x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,128,32,3,4,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.03106,347.406,39089.6
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_256x128_32x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,128,32,3,4,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.2381,325.193,36590.2
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x256_32x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,256,32,3,2,4,1,16,8,16,80,1024,1130659840,118482796544,104,5.6279,187.105,21052.7
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x256_32x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,256,32,3,2,4,1,16,8,16,80,1024,1130659840,118482796544,104,6.00349,175.399,19735.6
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x256_32x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,256,32,3,2,4,1,16,8,16,80,1024,1130659840,118482796544,104,5.84705,180.092,20263.7
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_256x64_32x4_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,64,32,4,4,1,1,16,8,16,80,1024,1130659840,118482796544,104,3.1484,334.458,37632.7
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_256x64_32x4_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,64,32,4,4,1,1,16,8,16,80,1024,1130659840,118482796544,104,4.68378,224.821,25296.4
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_256x64_32x4_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,256,64,32,4,4,1,1,16,8,16,80,1024,1130659840,118482796544,104,34.3474,30.6576,3449.54
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x256_32x4_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,256,32,4,1,4,1,16,8,16,80,1024,1130659840,118482796544,104,5.69418,184.927,20807.7
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x256_32x4_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,256,32,4,1,4,1,16,8,16,80,1024,1130659840,118482796544,104,6.08112,173.16,19483.7
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x256_32x4_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,256,32,4,1,4,1,16,8,16,80,1024,1130659840,118482796544,104,6.9311,151.925,17094.4
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,3,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,2.72812,385.984,43430.3
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,3,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,2.78632,377.921,42523
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,3,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.10222,339.437,38192.9
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x4_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,4,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,2.94576,357.466,40221.5
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x4_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,4,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.46514,303.887,34192.8
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x4_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,4,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.79656,277.359,31207.9
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x5_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,5,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,2.94568,357.476,40222.6
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x5_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,5,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.50115,300.761,33841.1
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x128_32x5_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,128,32,5,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.8809,271.331,30529.7
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x64_32x6_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,32,6,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.09521,340.206,38279.4
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x64_32x6_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,32,6,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.55652,296.079,33314.3
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x64_32x6_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,32,6,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,4.21302,249.941,28123
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x128_32x6_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,32,6,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.00873,349.985,39379.7
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x128_32x6_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,32,6,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.57372,294.654,33153.9
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x128_32x6_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,32,6,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.98563,264.201,29727.5
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x64_32x10_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,32,10,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.31793,317.369,35709.8
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x64_32x10_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,32,10,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.91035,269.288,30299.8
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x64_32x10_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,32,10,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,5.94138,177.233,19942
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x64_64x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,64,3,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.07099,342.89,38581.3
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x64_64x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,64,3,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.23696,325.308,36603.2
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_128x64_64x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,128,64,64,3,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,5.8011,181.519,20424.2
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x128_64x3_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,64,3,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.05044,345.199,38841.2
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x128_64x3_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,64,3,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.14193,335.147,37710.2
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x128_64x3_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,128,64,3,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.37466,312.035,35109.6
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x64_64x5_nhwc_align8,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,64,5,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.25107,323.896,36444.3
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x64_64x5_nhwc_align4,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,64,5,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,3.42773,307.203,34566
1,CUTLASS,conv2d,cutlass_tensorop_s16816fprop_optimized_f16_64x64_64x5_nhwc_align2,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,f16:nhwc,f16:nhwc,f32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,f32,64,64,64,5,2,2,1,16,8,16,80,1024,1130659840,118482796544,104,4.53768,232.059,26110.9
