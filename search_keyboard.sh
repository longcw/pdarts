#!/usr/bin/env bash

python3 train_search.py \
        --tmp_data_dir /data/keyboard_aoi_data \
        --save logs/ \
        --layers 4 \
        --add_layers 2 \
        --add_layers 4 \
        --dropout_rate 0.1 \
        --dropout_rate 0.2 \
        --dropout_rate 0.2 \
        --note keyboard-v7 \
        --dataset keyboard \
        --learning_rate 0.025 \
        --init_channels 10 \
        --batch_size 64 \
        --epochs 35
        # --arch_learning_rate 0.001

# python3 train_cifar.py \
#         --tmp_data_dir ./data \
#         --auxiliary \
#         --cutout \
#         --save log_path \
#         --arch PDARTS2 \
#         --note cifar10-pdarts2