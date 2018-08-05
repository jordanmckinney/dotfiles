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
pip install virtualenv
pip3 install virtualenv
pip install virtualenvwrapper
pip3 install virtualenvwrapper
pip install autoenv
pip3 install autoenv

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

########################

sudo apt update

sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -

# Check zprofile

rbenv install 2.5.1
rbenv global 2.5.1

gem install tmuxinator
