#!/bin/bash

# sudo apt install nautilus-dropbox
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
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor

sudo apt-get update
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
# add key to github

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# create ssh keys for github
# ************* autoenv **********************
# .env in Development, ~
# if [ -n "$VIRTUAL_ENV" ] ; then
#     deactivate
# fi
# ************* Nvim *************************
# :PlugInstall
# :UpdateRemotePlugins
#
# ************* Etc *************************
# install chrome from the chrome site
# sublimetext3
#
# ************* Software Center *************
# gnome tweaktool, unity tweak
#
# ************* Fonts ***********************
# default: ubuntu regular 10
# document: sans regular 10
# monospace: source code pro for powerline medium 10
# window title: robot mono for powerline bold 10
#
# ************* Startup ********************
# dropbox: dropbox start -i
# redshift: /usr/bin/redshift
# chrome
# terminal
#
# ************* Sleep Disks ********************
# go into `disks`
