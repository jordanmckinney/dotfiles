#!/bin/bash

sudo apt install nautilus-dropbox
sudo apt install curl
sudo apt install tree
sudo apt install htop
sudo apt install tmux
sudo apt install redshift
sudo apt install git
sudo apt install zsh
sudo apt install vlc
sudo apt install xsel
sudo apt install silversearcher-ag
sudo apt install --reinstall hplip

git clone https://github.com/powerline/fonts ~/.local/share/fonts

sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update

<<<<<<< HEAD
git clone https://github.com/powerline/fonts ~/.local/share/fonts

=======
>>>>>>> 0b796f39d7865fcb8606ade13af485ccc92355f7
sudo apt-get install paper-icon-theme
sudo apt-get install paper-gtk-theme
sudo apt-get install paper-cursor-theme
sudo apt install arc-flatabulous-theme

sudo apt-get upgrade

git config --global user.email "jordanmmck@gmail.com"
git config --global user.name "Jordan McKinney"
git config --global push.default simple

rm ~/examples.desktop
rmdir ~/Music
rmdir ~/Public
rmdir ~/Videos
rmdir ~/Templates
rmdir ~/Pictures
mkdir ~/Development

ssh-keygen -t rsa -b 4096 -C "jordanmmck@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
