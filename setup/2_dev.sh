#!/bin/bash

sudo apt install postgresql
sudo apt install libpq-d
pip install --upgrade --user awscli
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

echo 'MIGHT NEED TO RESTART'

nvm install node
sudo ln -s /usr/bin/nodejs /usr/bin/node
npm install npm -g

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

sudo apt-get install postgresql
sudo apt-get install python-psycopg2
sudo apt-get install libpq-dev

sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

exec $SHELL

echo 'RESTART TERM'
