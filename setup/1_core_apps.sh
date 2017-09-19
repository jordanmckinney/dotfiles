#!/bin/bash

# basic stuff
sudo apt install nautilus-dropbox curl tree \ 
htop tmux redshift vlc xsel \ 
silversearcher-ag golang-go \
trimage git zsh

# python stuff
sudo apt-get install python-pip python3-pip
pip install --upgrade pip
pip3 install --upgrade pip
sudo pip install virtualenv
sudo pip3 install virtualenv
sudo pip install virtualenvwrapper
sudo pip3 install virtualenvwrapper
sudo pip install autoenv
sudo pip3 install autoenv

# git
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

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"