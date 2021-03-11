#!/bin/bash

set -ex

sudo apt-get install -y docker.io
sudo systemctl enable --now docker
mkdir -p ailib/version
git rev-parse --short HEAD > ailib/version/git
docker build -t quay.io/karmab/aicli -f Dockerfile .
