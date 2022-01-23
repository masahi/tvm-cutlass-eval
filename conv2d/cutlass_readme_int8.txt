


=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i8816fprop_optimized_s8_256x128_64x2_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=256 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=8 --inst_n=8 --inst_k=16 --min_cc=75 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.29378  ms
          Memory: 480.921 GiB/s

            Math: 91578.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i8816fprop_optimized_s8_128x256_64x2_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=128 --cta_n=256 --cta_k=64 --stages=2  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=8 --inst_n=8 --inst_k=16 --min_cc=75 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.95325  ms
          Memory: 318.55 GiB/s

            Math: 60659.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i8816fprop_optimized_s8_128x128_64x2_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=128 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=8 --inst_n=8 --inst_k=16 --min_cc=75 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.29882  ms
          Memory: 479.056 GiB/s

            Math: 91223.3 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i8816fprop_optimized_s8_64x256_64x2_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=64 --cta_n=256 --cta_k=64 --stages=2  \
                  --warps_m=1 --warps_n=4 --warps_k=1 --inst_m=8 --inst_n=8 --inst_k=16 --min_cc=75 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.76863  ms
          Memory: 351.802 GiB/s

            Math: 66991.2 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i8816fprop_optimized_s8_256x64_64x2_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=256 --cta_n=64 --cta_k=64 --stages=2  \
                  --warps_m=4 --warps_n=1 --warps_k=1 --inst_m=8 --inst_n=8 --inst_k=16 --min_cc=75 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.32323  ms
          Memory: 470.218 GiB/s

            Math: 89540.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i8816fprop_optimized_s8_64x128_64x2_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=64 --cta_n=128 --cta_k=64 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=8 --inst_n=8 --inst_k=16 --min_cc=75 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.13738  ms
          Memory: 547.055 GiB/s

            Math: 104172 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i8816fprop_optimized_s8_128x64_64x2_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=128 --cta_n=64 --cta_k=64 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=8 --inst_n=8 --inst_k=16 --min_cc=75 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.14062  ms
          Memory: 545.498 GiB/s

            Math: 103875 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i8816fprop_optimized_s8_64x64_64x2_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=64 --cta_n=64 --cta_k=64 --stages=2  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=8 --inst_n=8 --inst_k=16 --min_cc=75 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.32842  ms
          Memory: 468.38 GiB/s

            Math: 89190.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_256x128_64x3_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=256 --cta_n=128 --cta_k=64 --stages=3  \
                  --warps_m=4 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.09557  ms
          Memory: 567.93 GiB/s

            Math: 108147 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_128x256_64x3_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=128 --cta_n=256 --cta_k=64 --stages=3  \
                  --warps_m=2 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.70385  ms
          Memory: 365.177 GiB/s

            Math: 69538.1 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_256x64_64x4_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=256 --cta_n=64 --cta_k=64 --stages=4  \
                  --warps_m=4 --warps_n=1 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.44226  ms
          Memory: 431.411 GiB/s

            Math: 82150.6 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_64x256_64x4_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=64 --cta_n=256 --cta_k=64 --stages=4  \
                  --warps_m=1 --warps_n=4 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.80906  ms
          Memory: 343.94 GiB/s

            Math: 65494.1 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_128x128_64x5_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=128 --cta_n=128 --cta_k=64 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.02658  ms
          Memory: 606.097 GiB/s

            Math: 115415 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_128x64_64x6_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=128 --cta_n=64 --cta_k=64 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.26881  ms
          Memory: 490.388 GiB/s

            Math: 93381.4 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_64x128_64x6_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=64 --cta_n=128 --cta_k=64 --stages=6  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.17525  ms
          Memory: 529.424 GiB/s

            Math: 100815 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_64x64_64x10_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=64 --cta_n=64 --cta_k=64 --stages=10  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.55001  ms
          Memory: 401.422 GiB/s

            Math: 76440.1 GFLOP/s













=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_128x64_128x3_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=128 --cta_n=64 --cta_k=128 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.22414  ms
          Memory: 508.281 GiB/s

            Math: 96788.5 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_64x128_128x3_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=64 --cta_n=128 --cta_k=128 --stages=3  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.16191  ms
          Memory: 535.503 GiB/s

            Math: 101972 GFLOP/s



=============================
  Problem ID: 1

        Provider: [1;37mCUTLASS[0m
   OperationKind: [1;37mconv2d[0m
       Operation: cutlass_tensorop_i16832fprop_optimized_s8_64x64_128x5_nhwc_align16

          Status: [1;37mSuccess[0m
    Verification: [1;37mON[0m
     Disposition: [1;32mPassed[0m

reference_device: Passed
           cuDNN: Not supported

       Arguments: --conv_kind=fprop --n=8 --h=224 --w=224 --c=128 --k=128 --r=3 --s=3 --p=224 --q=224 --pad_h=1 --pad_w=1  \
                  --stride_h=1 --stride_w=1 --dilation_h=1 --dilation_w=1 --Activation=s8:nhwc --Filter=s8:nhwc --Output=s32:nhwc  \
                  --conv_mode=cross --iterator_algorithm=optimized --alpha=1 --beta=0 --split_k_mode=serial --split_k_slices=1  \
                  --eq_gemm_provider=none --op_class=tensorop --accum=s32 --cta_m=64 --cta_n=64 --cta_k=128 --stages=5  \
                  --warps_m=2 --warps_n=2 --warps_k=1 --inst_m=16 --inst_n=8 --inst_k=32 --min_cc=80 --max_cc=1024

           Bytes: 668090368  bytes
           FLOPs: 118482796544  flops
           FLOPs/Byte: 177

         Runtime: 1.44857  ms
          Memory: 429.532 GiB/s

            Math: 81792.9 GFLOP/s


=============================

CSV Results:

Problem,Provider,OperationKind,Operation,Disposition,Status,conv_kind,n,h,w,c,k,r,s,p,q,pad_h,pad_w,stride_h,stride_w,dilation_h,dilation_w,Activation,Filter,Output,conv_mode,iterator_algorithm,alpha,beta,split_k_mode,split_k_slices,eq_gemm_provider,op_class,accum,cta_m,cta_n,cta_k,stages,warps_m,warps_n,warps_k,inst_m,inst_n,inst_k,min_cc,max_cc,Bytes,Flops,Flops/Byte,Runtime,GB/s,GFLOPs
1,CUTLASS,conv2d,cutlass_tensorop_i8816fprop_optimized_s8_256x128_64x2_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,256,128,64,2,4,2,1,8,8,16,75,1024,668090368,118482796544,177,1.29378,480.921,91578.6
1,CUTLASS,conv2d,cutlass_tensorop_i8816fprop_optimized_s8_128x256_64x2_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,128,256,64,2,2,4,1,8,8,16,75,1024,668090368,118482796544,177,1.95325,318.55,60659.3
1,CUTLASS,conv2d,cutlass_tensorop_i8816fprop_optimized_s8_128x128_64x2_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,128,128,64,2,2,2,1,8,8,16,75,1024,668090368,118482796544,177,1.29882,479.056,91223.3
1,CUTLASS,conv2d,cutlass_tensorop_i8816fprop_optimized_s8_64x256_64x2_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,64,256,64,2,1,4,1,8,8,16,75,1024,668090368,118482796544,177,1.76863,351.802,66991.2
1,CUTLASS,conv2d,cutlass_tensorop_i8816fprop_optimized_s8_256x64_64x2_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,256,64,64,2,4,1,1,8,8,16,75,1024,668090368,118482796544,177,1.32323,470.218,89540.4
1,CUTLASS,conv2d,cutlass_tensorop_i8816fprop_optimized_s8_64x128_64x2_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,64,128,64,2,2,2,1,8,8,16,75,1024,668090368,118482796544,177,1.13738,547.055,104172
1,CUTLASS,conv2d,cutlass_tensorop_i8816fprop_optimized_s8_128x64_64x2_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,128,64,64,2,2,2,1,8,8,16,75,1024,668090368,118482796544,177,1.14062,545.498,103875
1,CUTLASS,conv2d,cutlass_tensorop_i8816fprop_optimized_s8_64x64_64x2_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,64,64,64,2,2,2,1,8,8,16,75,1024,668090368,118482796544,177,1.32842,468.38,89190.4
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_256x128_64x3_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,256,128,64,3,4,2,1,16,8,32,80,1024,668090368,118482796544,177,1.09557,567.93,108147
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_128x256_64x3_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,128,256,64,3,2,4,1,16,8,32,80,1024,668090368,118482796544,177,1.70385,365.177,69538.1
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_256x64_64x4_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,256,64,64,4,4,1,1,16,8,32,80,1024,668090368,118482796544,177,1.44226,431.411,82150.6
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_64x256_64x4_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,64,256,64,4,1,4,1,16,8,32,80,1024,668090368,118482796544,177,1.80906,343.94,65494.1
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_128x128_64x5_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,128,128,64,5,2,2,1,16,8,32,80,1024,668090368,118482796544,177,1.02658,606.097,115415
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_128x64_64x6_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,128,64,64,6,2,2,1,16,8,32,80,1024,668090368,118482796544,177,1.26881,490.388,93381.4
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_64x128_64x6_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,64,128,64,6,2,2,1,16,8,32,80,1024,668090368,118482796544,177,1.17525,529.424,100815
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_64x64_64x10_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,64,64,64,10,2,2,1,16,8,32,80,1024,668090368,118482796544,177,1.55001,401.422,76440.1
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_128x64_128x3_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,128,64,128,3,2,2,1,16,8,32,80,1024,668090368,118482796544,177,1.22414,508.281,96788.5
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_64x128_128x3_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,64,128,128,3,2,2,1,16,8,32,80,1024,668090368,118482796544,177,1.16191,535.503,101972
1,CUTLASS,conv2d,cutlass_tensorop_i16832fprop_optimized_s8_64x64_128x5_nhwc_align16,passed,success,fprop,8,224,224,128,128,3,3,224,224,1,1,1,1,1,1,s8:nhwc,s8:nhwc,s32:nhwc,cross,optimized,1,0,serial,1,none,tensorop,s32,64,64,128,5,2,2,1,16,8,32,80,1024,668090368,118482796544,177,1.44857,429.532,81792.9
