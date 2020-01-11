#!/usr/bin/env bash

python3 train_search.py \
        --tmp_data_dir ./data \
        --save logs/ \
        --add_layers 6 \
        --add_layers 12 \
        --dropout_rate 0.1 \
        --dropout_rate 0.4 \
        --dropout_rate 0.7 \
        --note cifar10-pdarts3

# python3 train_cifar.py \
#         --tmp_data_dir ./data \
#         --auxiliary \
#         --cutout \
#         --save log_path \
#         --arch PDARTS2 \
#         --note cifar10-pdarts2