#!/bin/bash

#sudo apt install libpq-d
#pip install --upgrade --user awscli
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

echo 'RESTART'

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

sudo apt-get install postgresql python-psycopg2 libpq-dev

echo 'RESTART TERM'
