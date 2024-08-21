#!/bin/bash

set -exo pipefail

eval "$(conda shell.bash hook)"

conda activate py311

pip install --no-cache-dir \
    torch==1.11.0+cu113 \
    torchvision==0.12.0+cu113 \
    torchaudio==0.11.0 --extra-index-url https://download.pytorch.org/whl/cu113

pip install --no-cache-dir \
    pytorch-scatter -f https://data.pyg.org/whl/torch-1.11.0+cu113.html

pip install --no-cache-dir \
    omegaconf \
    loguru \
    open3d \
    tensorboard \
    scipy \
    opencv \
    tqdm \
    suitesparse \
    matplotlib \
    pyyaml \
    gdown

pip install evo --upgrade --no-binary evo
