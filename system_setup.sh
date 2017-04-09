#!/bin/bash
# node / nvm install
# http://stackoverflow.com/questions/16151018/npm-throws-error-without-sudo/24404451#24404451

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
sudo mkdir /etc/X11/xorg.conf.d
sudo cp ~/Dropbox/DotFiles/etc_files/50-mouse-acceleration.conf /etc/X11/xorg.conf.d/

sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get upgrade

git clone https://github.com/powerline/fonts ~/.local/share/fonts
sudo apt-get install paper-icon-theme
sudo apt-get install paper-gtk-theme
sudo apt-get install paper-cursor-theme
sudo apt install arc-flatabulous-theme
sudo apt install --reinstall hplip

ln -s ~/Dropbox/DotFiles/.zsh ~/
echo "set editing-mode vi" >> ~/.inputrc
echo "set keymap vi-command" >> ~/.inputrc
echo "source ~/Dropbox/DotFiles/zshrc" >> ~/.zshrc
echo "source ~/Dropbox/DotFiles/tmux.conf" >> ~/.tmux.conf
cp ~/Dropbox/DotFiles/.zprofile ~/.zprofile

sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

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

sudo apt install postgresql
sudo apt install libpq-dev

curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils

# break here

pyenv install 2.7.11
pyenv install 3.4.4

pyenv virtualenv 2.7.11 neovim2
pyenv virtualenv 3.4.4 neovim3

pyenv activate neovim2
pip install neovim
# pyenv which python  # Note the path

pyenv activate neovim3
pip install neovim
# pyenv which python  # Note the path

sudo apt-get install neovim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

mkdir ~/.config/nvim
ln -s ~/Dropbox/DotFiles/init.vim ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/after ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/colors ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/syntax ~/.config/nvim/

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ~/.config/nvim
git clone https://github.com/Shougo/deoplete.nvim.git

ssh-keygen -t rsa -b 4096 -C "jordanmmck@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# add key to github

# docker?
# create ssh keys for github
# ************* autoenv **********************
# .env
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
