#!/bin/bash

git clone https://github.com/powerline/fonts ~/.local/share/fonts

sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update

sudo apt-get install paper-icon-theme
sudo apt-get install paper-gtk-theme
sudo apt-get install paper-cursor-theme
sudo apt install arc-flatabulous-theme

sudo apt-get upgrade