#!/bin/bash

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo ubuntu-drivers autoinstall
sudo apt install nvidia-cuda-toolkit gcc-6
nvcc --version

sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration

# edit /etc/X11/xorg.conf
# Under Section "Device"
# add:
# Option "Coolbits" "1"
# http://www.upubuntu.com/2011/09/how-to-overclock-nvidia-graphics-cards.html

# sudo update-grub
