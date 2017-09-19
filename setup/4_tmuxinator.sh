#!/bin/bash

# exec $SHELL

rbenv install 2.3.4
rbenv global 2.3.4
gem install bundler
rbenv rehash
gem install tmuxinator
git clone https://github.com/tmuxinator/tmuxinator.git
mkdir ~/.bin
cp tmuxinator/completion/tmuxinator.zsh ~/.bin
rm -rf tmuxinator

echo 'RESTART NOW'
