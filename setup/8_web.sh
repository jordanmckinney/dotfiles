#!/bin/bash

# nvm, npm, node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
echo 'RESTART'
nvm install node
sudo ln -s /usr/bin/nodejs /usr/bin/node
npm install npm -g

echo 'RESTART TERM'