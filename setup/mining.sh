#!/bin/bash

# https://github.com/ethereum-mining/ethminer/releases
sudo update-grub
sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration

# start.sh
# nvidia-settings -a "[gpu:0]/GPUGraphicsClockOffset[3]=-100" \
#                -a "[gpu:0]/GPUMemoryTransferRateOffset[3]=1000"

# sudo nvidia-smi -i 0 -pl 105

# ./ethminer -U -S eth-us-west1.nanopool.org:9999 -O 0xFb8518897CF095837784d40Ab00931316cEe13EB.cmdcenter/jordanmmck@gmail.com
