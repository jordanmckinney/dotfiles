#!/bin/bash

rbenv install 2.3.4
rbenv global 2.3.4
gem install bundler
rbenv rehash
gem install tmuxinator
git clone https://github.com/tmuxinator/tmuxinator.git
mkdir ~/.bin
cp tmuxinator/completion/tmuxinator.zsh ~/.bin
rm -rf tmuxinator

sudo apt-get install nginx
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils

echo 'RESTART NOW'
