#!/bin/bash

sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum geth

# not sure we need these?
sudo apt-add-repository multiverse
sudo apt update
sudo apt install nvidia-modprobe

# Install nvidia-docker and nvidia-docker-plugin
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
sudo dpkg -i /tmp/nvidia-docker*.deb && rm /tmp/nvidia-docker*.deb

# Test nvidia-smi
nvidia-docker run --rm nvidia/cuda nvidia-smi

# https://github.com/ethereum/mist/releases
# sudo dpkg -i Ethereum-Wallet-linux64-0-8-10.deb

# https://github.com/Anthony-Tatowicz/docker-ethminer
# clone and build docker image locally

sudo X :1 -configure
sudo cp xorg.conf.new /etc/X11/xorg.conf.d
cd /etc/X11/
sudo nvidia-xconfig --cool-bits=12

# restart

nvidia-settings -a "[gpu:0]/GPUGraphicsClockOffset[3]=100" \
                -a "[gpu:0]/GPUMemoryTransferRateOffset[3]=1000"

nvidia-docker run -it ethminer -S eth-us-west1.nanopool.org:9999 -O 0xFb8518897CF095837784d40Ab00931316cEe13EB.cmdcenter/jordanmmck@gmail.com

# ZCASH
# https://github.com/zcash/zcash/wiki/1.0-User-Guide
