export CUDA_VISIBLE_DEVICES=7
conda activate open-mmlab
export PYTHONPATH=/u01/khienpv1/manvd1/action-recognition/Video-Swin-Transformer/mmaction:$PYTHONPATH
python demo/long_video_demo.py configs/recognition/custom/swin_tiny_patch244_window877_kinetics400_1k_demo.py \
checkpoints/swin_tiny_patch244_window877_kinetics400_1k.pth \
demo/video/stream-1.mp4 \
demo/label_map_k400.txt \
demo/output/stream-1.mp4 \
--input-step 4 --device cuda --threshold 0.2


