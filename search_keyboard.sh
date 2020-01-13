#!/usr/bin/env bash

python3 train_search.py \
        --tmp_data_dir /data/keyboard_aoi_data \
        --save logs/ \
        --add_layers 5 \
        --add_layers 10 \
        --dropout_rate 0.1 \
        --dropout_rate 0.4 \
        --dropout_rate 0.7 \
        --note keyboard-v4 \
        --dataset keyboard \
        --learning_rate 0.025 \
        --init_channels 16 \
        --batch_size 64 \
        --epochs 25

# python3 train_cifar.py \
#         --tmp_data_dir ./data \
#         --auxiliary \
#         --cutout \
#         --save log_path \
#         --arch PDARTS2 \
#         --note cifar10-pdarts2