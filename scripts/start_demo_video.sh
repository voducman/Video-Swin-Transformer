export CUDA_VISIBLE_DEVICES=7
conda activate open-mmlab
export PYTHONPATH=/u01/khienpv1/manvd1/action-recognition/Video-Swin-Transformer/mmaction:$PYTHONPATH
python demo/demo.py configs/recognition/swin/swin_tiny_patch244_window877_kinetics400_1k.py \
checkpoints/swin_tiny_patch244_window877_kinetics400_1k.pth \
demo/demo.mp4 \
demo/label_map_k400.txt


