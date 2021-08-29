export CUDA_VISIBLE_DEVICES=1,5,7
conda activate video-swin-tranformer
cd mmaction
bash tools/dist_test.sh configs/recognition/custom/swin_base_patch244_window877_kinetics400_22k.py \
checkpoints/swin_base_patch244_window877_kinetics400_22k.pth 4 --eval top_k_accuracy
