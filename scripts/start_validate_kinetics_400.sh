export CUDA_VISIBLE_DEVICES=1,5,7
export PYTHONPATH=/u01/khienpv1/manvd1/action-recognition/Video-Swin-Transformer/mmaction:$PYTHONPATH
conda activate open-mmlab
screen -L -Logfile logs/validate-mvit.log -S validate-mvit -m bash -c "bash tools/dist_test.sh \
configs/recognition/custom/swin_base_patch244_window877_kinetics400_22k.py \
checkpoints/swin_base_patch244_window877_kinetics400_22k.pth 3 --eval top_k_accuracy"
