#!/bin/bash

sudo apt install postgresql
sudo apt install libpq-d
pip install --upgrade --user awscli
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
nvm install node

sudo apt-get install python-pip
sudo apt-get install python3-pip
pip install --upgrade pip
pip3 install --upgrade pip
sudo pip install virtualenv
sudo pip3 install virtualenv
sudo pip install virtualenvwrapper
sudo pip3 install virtualenvwrapper
sudo pip install autoenv
sudo pip3 install autoenv

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
exec $SHELL
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
exec $SHELL
rbenv install 2.3.4
rbenv global 2.3.4
gem install bundler
rbenv rehash
gem install tmuxinator
git clone git@github.com:tmuxinator/tmuxinator.git
mkdir ~/.bin
cp tmuxinator/completion/tmuxinator.zsh ~/.bin
rm -rf tmuxinator

sudo apt-get install nginx
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils

# restart now
