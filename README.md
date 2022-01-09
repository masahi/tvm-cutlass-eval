See https://github.com/apache/tvm/pull/9746

## Current results

Model name | Input size | CUTLASS | CUTLASS with activation fusion | CUTLASS with activation + residual block fusion | cuDNN | AutoTVM | TensorRT
-- | -- | -- | -- | -- | -- | -- | --
resnet50   | (8, 3, 224, 224) | 3.47 | 3.16 |2.76 |4.08|  4.14 | 2.53
efficientnet_v2 | (8, 3, 224, 224) | 8.18 | 8.05 | 7.87| 14.0 | 13.2 | 5.25
DETR-R50            | (8, 3, 800, 750) | 61.06| 57.19 | 51.6 | 68.4 |80.5 | NA
deeplabv3_mobilenet_v3_large | (8, 3, 512, 512) | 10.3 | 9.16 | 9.68 (?) | 17.5 | 15.9 | 19.2 (?)
YOLOv5l         |  (8, 3, 512, 512)| 33.6 | 25.4 | 24.2 | 34.8 | N/A | N/A

todo
- maskrcnn fp16 strange result with cutlass and cudnn
