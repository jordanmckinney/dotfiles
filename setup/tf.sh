#!/bin/bash

sudo apt-get install linux-headers-$(uname -r)

# download cuda deb
wget -P ~/Downloads https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
cd Downloads
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda

# switch drivers to use non-proprietary one
# sudo apt-get --purge remove nvidia-*
