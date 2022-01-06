
#include <iostream>
#include <chrono>
#include "cutlass/cutlass.h"
#include "cutlass/conv/kernel/default_conv2d_fprop.h"
#include "cutlass/conv/device/implicit_gemm_convolution.h"
#include "cutlass/util/command_line.h"
#include "cutlass/util/host_tensor.h"
#include "cutlass/util/reference/host/tensor_fill.h"

#define CUTLASS_CHECK(status)                                                                      {                                                                                                  cutlass::Status error = status;                                                                  if (error != cutlass::Status::kSuccess) {                                                          std::cerr << "Got cutlass error: " << cutlassGetStatusString(error) << " at: " << __LINE__                 << std::endl;                                                                          throw std::runtime_error("cutlass error");                                                     }                                                                                              }


  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align8"
  using cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<256, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm0 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align4"
  using cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<256, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm1 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align2"
  using cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<256, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm2 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align1"
  using cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align1 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<256, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      1,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    1,
    1
  >::Kernel;

using ImplicitGemm3 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_256x128_32x2_nhwc_align1>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align8"
  using cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm4 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align4"
  using cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm5 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align2"
  using cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm6 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align1"
  using cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align1 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      1,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    1,
    1
  >::Kernel;

using ImplicitGemm7 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x256_32x2_nhwc_align1>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align8"
  using cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm8 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align4"
  using cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm9 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align2"
  using cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm10 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align1"
  using cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align1 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      1,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    1,
    1
  >::Kernel;

using ImplicitGemm11 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x128_32x2_nhwc_align1>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align8"
  using cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 128, 32>,
    cutlass::gemm::GemmShape<32, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm12 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align4"
  using cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 128, 32>,
    cutlass::gemm::GemmShape<32, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm13 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align2"
  using cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 128, 32>,
    cutlass::gemm::GemmShape<32, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm14 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align1"
  using cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align1 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 128, 32>,
    cutlass::gemm::GemmShape<32, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      1,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    1,
    1
  >::Kernel;

using ImplicitGemm15 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x128_32x2_nhwc_align1>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align8"
  using cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 64, 32>,
    cutlass::gemm::GemmShape<64, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm16 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align4"
  using cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 64, 32>,
    cutlass::gemm::GemmShape<64, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm17 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align2"
  using cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 64, 32>,
    cutlass::gemm::GemmShape<64, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm18 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align1"
  using cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align1 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<128, 64, 32>,
    cutlass::gemm::GemmShape<64, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      1,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    1,
    1
  >::Kernel;

using ImplicitGemm19 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_128x64_32x2_nhwc_align1>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align8"
  using cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 64, 32>,
    cutlass::gemm::GemmShape<32, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm20 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align4"
  using cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 64, 32>,
    cutlass::gemm::GemmShape<32, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm21 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align2"
  using cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 64, 32>,
    cutlass::gemm::GemmShape<32, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm22 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align1"
  using cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align1 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 64, 32>,
    cutlass::gemm::GemmShape<32, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      1,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    1,
    1
  >::Kernel;

using ImplicitGemm23 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x64_32x2_nhwc_align1>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align8"
  using cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm24 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align4"
  using cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm25 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align2"
  using cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm26 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align1"
  using cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align1 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm75,
    cutlass::gemm::GemmShape<64, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 8>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      1,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    2,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    1,
    1
  >::Kernel;

using ImplicitGemm27 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h1688fprop_optimized_64x128_64x2_nhwc_align1>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm28 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm29 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm30 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x128_32x3_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm31 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm32 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm33 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x256_32x3_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 64, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm34 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 64, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm35 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 64, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm36 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x64_32x4_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm37 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm38 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 256, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm39 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x256_32x4_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm40 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm41 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm42 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_32x3_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm43 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm44 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm45 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_32x4_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    5,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm46 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    5,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm47 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 32>,
    cutlass::gemm::GemmShape<64, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    5,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm48 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_32x5_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 64, 32>,
    cutlass::gemm::GemmShape<64, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    6,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm49 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 64, 32>,
    cutlass::gemm::GemmShape<64, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    6,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm50 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 64, 32>,
    cutlass::gemm::GemmShape<64, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    6,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm51 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x64_32x6_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 128, 32>,
    cutlass::gemm::GemmShape<32, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    6,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm52 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 128, 32>,
    cutlass::gemm::GemmShape<32, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    6,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm53 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 128, 32>,
    cutlass::gemm::GemmShape<32, 64, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    6,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm54 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x128_32x6_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 64, 32>,
    cutlass::gemm::GemmShape<32, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    10,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm55 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 64, 32>,
    cutlass::gemm::GemmShape<32, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    10,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm56 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 64, 32>,
    cutlass::gemm::GemmShape<32, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    10,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm57 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x64_32x10_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x128_64x3_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_256x128_64x3_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm58 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x128_64x3_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x128_64x3_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_256x128_64x3_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm59 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x128_64x3_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x128_64x3_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_256x128_64x3_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm60 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x128_64x3_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x256_64x3_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_128x256_64x3_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 256, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm61 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x256_64x3_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x256_64x3_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_128x256_64x3_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 256, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm62 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x256_64x3_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x256_64x3_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_128x256_64x3_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 256, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm63 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x256_64x3_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x64_64x4_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_256x64_64x4_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 64, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm64 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x64_64x4_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x64_64x4_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_256x64_64x4_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 64, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm65 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x64_64x4_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_256x64_64x4_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_256x64_64x4_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<256, 64, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm66 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_256x64_64x4_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x256_64x4_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_64x256_64x4_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 256, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm67 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x256_64x4_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x256_64x4_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_64x256_64x4_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 256, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm68 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x256_64x4_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x256_64x4_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_64x256_64x4_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 256, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm69 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x256_64x4_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_64x4_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_128x128_64x4_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm70 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_64x4_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_64x4_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_128x128_64x4_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm71 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_64x4_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x128_64x4_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_128x128_64x4_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 128, 64>,
    cutlass::gemm::GemmShape<64, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    4,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm72 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x128_64x4_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 64, 64>,
    cutlass::gemm::GemmShape<64, 32, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm73 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 64, 64>,
    cutlass::gemm::GemmShape<64, 32, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm74 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<128, 64, 64>,
    cutlass::gemm::GemmShape<64, 32, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm75 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_128x64_64x3_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 128, 64>,
    cutlass::gemm::GemmShape<32, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm76 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 128, 64>,
    cutlass::gemm::GemmShape<32, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm77 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 128, 64>,
    cutlass::gemm::GemmShape<32, 64, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm78 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x128_64x3_nhwc_align2>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align8"
  using cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align8 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 64, 64>,
    cutlass::gemm::GemmShape<32, 32, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      8,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    5,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    8,
    8
  >::Kernel;

using ImplicitGemm79 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align8>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align4"
  using cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align4 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 64, 64>,
    cutlass::gemm::GemmShape<32, 32, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      4,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    5,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using ImplicitGemm80 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align4>;

  // Conv2dFprop Optimized kernel instance "cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align2"
  using cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align2 =
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::layout::TensorNHWC,
    cutlass::half_t,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 64, 64>,
    cutlass::gemm::GemmShape<32, 32, 64 >,
    cutlass::gemm::GemmShape<16, 8, 16>,

    cutlass::epilogue::thread::LinearCombination<
      cutlass::half_t,
      2,
      cutlass::half_t,
      cutlass::half_t
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    5,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kOptimized,
    cutlass::conv::StrideSupport::kStrided,
    2,
    2
  >::Kernel;

using ImplicitGemm81 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_h16816fprop_optimized_64x64_64x5_nhwc_align2>;

using ElementOutput = typename ImplicitGemm0::ElementC;
using ElementInputA = typename ImplicitGemm0::ElementA;
using ElementInputB = typename ImplicitGemm0::ElementB;
using ElementComputeEpilogue = typename ImplicitGemm0::ElementCompute;
using HostTensorA = cutlass::HostTensor<ElementInputA, typename ImplicitGemm0::LayoutA>;
using HostTensorB = cutlass::HostTensor<ElementInputB, typename ImplicitGemm0::LayoutB>;
using HostTensorC = cutlass::HostTensor<ElementOutput, typename ImplicitGemm0::LayoutC>;

struct Options {
  cutlass::Tensor4DCoord input_size;
  cutlass::Tensor4DCoord filter_size;
  cutlass::Tensor4DCoord padding;
  cutlass::MatrixCoord conv_stride;
  cutlass::MatrixCoord dilation;

  void parse(int argc, char const **args) {
    cutlass::CommandLine cmd(argc, args);
    cmd.get_cmd_line_argument("n", input_size.n());
    cmd.get_cmd_line_argument("h", input_size.h());
    cmd.get_cmd_line_argument("w", input_size.w());
    cmd.get_cmd_line_argument("c", input_size.c());
    cmd.get_cmd_line_argument("k", filter_size.n());
    cmd.get_cmd_line_argument("r", filter_size.h());
    cmd.get_cmd_line_argument("s", filter_size.w());
    int pad_h, pad_w, stride_h, stride_w, dilation_h, dilation_w;
    cmd.get_cmd_line_argument("pad_h", pad_h);
    cmd.get_cmd_line_argument("pad_w", pad_w);
    cmd.get_cmd_line_argument("stride_h", stride_h);
    cmd.get_cmd_line_argument("stride_w", stride_w);
    cmd.get_cmd_line_argument("dilation_h", dilation_h);
    cmd.get_cmd_line_argument("dilation_w", dilation_w);
    filter_size.c() = input_size.c();
    padding = {pad_h, pad_h, pad_w, pad_w};
    conv_stride = {stride_h, stride_w};
    dilation = {dilation_h, dilation_w};
  }

  cutlass::Tensor4DCoord output_size() const {
    auto dilated_h = (filter_size.h() - 1) * dilation.row() + 1;
    auto dilated_w = (filter_size.w() - 1) * dilation.column() + 1;
    auto h = (input_size.h() + padding.n() + padding.h() - dilated_h) / conv_stride.row() + 1;
    auto w = (input_size.w() + padding.w() + padding.c() - dilated_w) / conv_stride.column() + 1;
    return cutlass::Tensor4DCoord(input_size.n(), h, w, filter_size.n());
  }
};

template <typename ImplicitGemm>
double profile(ImplicitGemm implicit_gemm_op,
	       const cutlass::conv::Conv2dProblemSize& problem_size,
	       HostTensorA tensor_a,
	       HostTensorB tensor_b,
	       HostTensorC tensor_c,
	       HostTensorC tensor_ref_c,
	       cudaEvent_t events[2],
	       cutlass::device_memory::allocation<uint8_t> workspace) {
  typename ImplicitGemm::Arguments arguments{
    problem_size,
      tensor_a.device_ref(),
      tensor_b.device_ref(),
      tensor_c.device_ref(),
      tensor_c.device_ref(),
      {ElementComputeEpilogue(1), ElementComputeEpilogue(0)},
      };

  auto status = implicit_gemm_op.can_implement(arguments);
  CUTLASS_CHECK(status);

  status = implicit_gemm_op.initialize(arguments, workspace.get());
  CUTLASS_CHECK(status);
  status = implicit_gemm_op();
  CUTLASS_CHECK(status);

  cudaEventRecord(events[0]);

  for (int iteration = 0; iteration < 100; ++iteration) {
    auto status = implicit_gemm_op();
    CUTLASS_CHECK(status);
  }

  cudaEventRecord(events[1]);
  cudaEventSynchronize(events[1]);
  float runtime_ms = 0;
  cudaEventElapsedTime(&runtime_ms, events[0], events[1]);

  return double(runtime_ms) / 100.0;
}

template <typename ImplicitGemm>
double try_profile(ImplicitGemm implicit_gemm_op,
		   const cutlass::conv::Conv2dProblemSize& problem_size,
		   HostTensorA tensor_a,
		   HostTensorB tensor_b,
		   HostTensorC tensor_c,
		   HostTensorC tensor_ref_c,
		   cudaEvent_t events[2],
		   cutlass::device_memory::allocation<uint8_t> workspace) {
  try {
    using namespace std::chrono;
    //high_resolution_clock::time_point t1 = high_resolution_clock::now();
    auto t1 = system_clock::now();
    auto ret = profile(implicit_gemm_op, problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace);
    //high_resolution_clock::time_point t2 = high_resolution_clock::now();
    auto t2 = system_clock::now();
    duration<double> time_span = duration_cast<milliseconds>(t2 - t1);
    std::cout << ret << ", " << time_span.count() << std::endl;
    return ret;
  } catch(std::exception&) {
    return 999999;
  }
}

std::vector<double> profile_convolution(Options const &options) {
  auto oshape = options.output_size();
  HostTensorA tensor_a(options.input_size);
  HostTensorB tensor_b(options.filter_size);
  HostTensorC tensor_c(oshape);
  HostTensorC tensor_ref_c(oshape);

  cutlass::conv::Conv2dProblemSize problem_size(
						options.input_size,
						options.filter_size,
						options.padding,
						options.conv_stride,
						options.dilation,
						options.output_size(),
						cutlass::conv::Mode::kCrossCorrelation,
						1
						);

  cudaEvent_t events[2];
  for (auto & event : events) {
    cudaEventCreate(&event);
  }

  ImplicitGemm0 conv2d_op;
  typename ImplicitGemm0::Arguments arguments{
    problem_size,
      tensor_a.device_ref(),
      tensor_b.device_ref(),
      tensor_c.device_ref(),
      tensor_c.device_ref(),
      {ElementComputeEpilogue(1), ElementComputeEpilogue(0)},
      };

  size_t workspace_size = conv2d_op.get_workspace_size(arguments);
  cutlass::device_memory::allocation<uint8_t> workspace(workspace_size);

  std::vector<double> elapsed;
  elapsed.push_back(try_profile(ImplicitGemm0(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm1(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm2(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm3(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm4(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm5(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm6(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm7(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm8(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm9(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm10(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm11(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm12(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm13(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm14(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm15(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm16(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm17(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm18(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm19(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm20(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm21(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm22(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm23(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm24(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm25(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm26(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm27(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm28(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm29(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm30(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm31(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm32(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm33(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm34(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm35(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm36(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm37(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm38(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm39(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm40(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm41(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm42(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm43(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm44(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm45(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm46(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm47(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm48(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm49(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm50(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm51(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm52(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm53(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm54(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm55(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm56(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm57(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm58(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm59(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm60(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm61(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm62(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm63(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm64(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm65(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm66(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm67(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm68(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm69(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm70(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm71(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm72(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm73(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm74(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm75(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm76(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm77(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm78(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm79(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm80(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));
  elapsed.push_back(try_profile(ImplicitGemm81(), problem_size, tensor_a, tensor_b, tensor_c, tensor_ref_c, events, workspace));

  for (auto event : events) {
    (void)cudaEventDestroy(event);
  }

  return elapsed;
}

int main(int argc, char const **args) {
  Options options;
  options.parse(argc, args);
  auto elapsed = profile_convolution(options);

  double total = 0;
  for (auto t: elapsed) {
    //    std::cout << t << std::endl;
    if (t < 100) {
    total += t * 100.0;
    }
  }
  std::cout << "total: " << total << std::endl;
  return 0;
}