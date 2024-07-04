#!/bin/bash

bash /nfs/volume-902-16/tangwenbo/s3_all.sh

cd /nfs/ofs-902-1/object-detection/jiangjing/experiments/ConfMix && CUDA_VISIBLE_DEVICES=0 /home/luban/apps/miniconda/miniconda/envs/torch1101/bin/python \
  "$1" \
  --name "$2" \
  --batch "$3" \
  --img "$4" \
  --epochs "$5" \
  --data "$6" \
  --weights "$7"
