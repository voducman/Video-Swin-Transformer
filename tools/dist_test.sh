#!/usr/bin/env bash

CONFIG=$1
CHECKPOINT=$2
GPUS=$3
PORT=${PORT:-29500}

echo $(pwd)
echo $PYTHONPATH
# Arguments starting from the forth one are captured by ${@:4}
python -m torch.distributed.launch --nproc_per_node=$GPUS --master_port=$PORT \
    tools/test.py $CONFIG $CHECKPOINT --launcher pytorch ${@:4}
