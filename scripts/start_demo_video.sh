export CUDA_VISIBLE_DEVICES=1
conda activate video-swin-transformer
#python demo/demo.py configs/recognition/swin/swin_tiny_patch244_window877_kinetics400_1k.py \
#checkpoints/swin_tiny_patch244_window877_kinetics400_1k.pth \
#demo/demo.mp4 \
#demo/label_map_k400.txt

python demo/demo.py configs/recognition/tsn/tsn_r50_video_inference_1x1x3_100e_kinetics400_rgb.py \
checkpoints/tsn_r50_1x1x3_100e_kinetics400_rgb_20200614-e508be42.pth \
/u01/khienpv1/manvd1/action-recognition/demo/common/workout-1.mp4 demo/label_map_k400.txt

