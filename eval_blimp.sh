#!/bin/bash

MODEL_PATH=$1
DATASET_NAME=$2
MODEL_NAME=$3
ANCHOR_SIZE=$4
CLOUD=$5

python -m lm_eval --model hf \
    --model_args pretrained=$MODEL_PATH \
    --tasks blimp \
    --device cuda:0 \
    --batch_size 128 \
    --cloud \
    --output_path results/blimp/${dataset_name}/${MODEL_BASENAME}/blimp_results.json 