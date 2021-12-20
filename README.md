See https://github.com/apache/tvm/pull/9746


Model name | Input size | CUTLASS | CUTLASS with fusion | cuDNN | AutoTVM | TensorRT
-- | -- | -- | -- | -- | -- | --
resnet50   | (8, 3, 224, 224) | 3.47 | 3.16 | 4.08|  4.14 | 2.53
efficientnet_v2 | (8, 3, 224, 224) | 8.18 | 8.26 (7.80 if use fast_math) | 14.0 | 13.2 | 5.25
DETR-R50            | (8, 3, 800, 750) | 61.06| 57.19 | 68.4 |80.5 | NA
deeplabv3_mobilenet_v3_large | (8, 3, 512, 512) | 10.3 | 9.16 | 17.5 | 15.9 | 19.2 (?)
YOLOv5l         |  (8, 3, 512, 512)| 33.6 | 25.4 (24.21 if use fast_math) | 34.8 | N/A | N/A

todo
- maskrcnn strange result with cutlass and cudnn
