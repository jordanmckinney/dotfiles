#!/bin/bash

sudo mkdir /etc/X11/xorg.conf.d
touch /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
sudo cat > /etc/X11/xorg.conf.d/50-mouse-acceleration.conf <<- EOM
Section "InputClass"
        Identifier "My Mouse"
        MatchIsPointer "yes"
        Option "AccelerationProfile" "-1"
        Option "AccelerationScheme" "none"
        Option "AccelSpeed" "-1"
EndSection
EOM

sudo apt install curl
sudo apt install tree
sudo apt install htop
sudo apt install tmux
sudo apt install redshift
sudo apt install git
sudo apt install nautilus-dropbox
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install indicator-sysmonitor
sudo apt-get install silversearcher-ag
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
cd ~/.local/share
git clone https://github.com/powerline/fonts
cd
sudo apt-get install paper-icon-theme
sudo apt-get install paper-gtk-theme
sudo apt-get install paper-cursor-theme
# `Arc-Flatabulous`: http://www.noobslab.com/2016/07/arc-flatabulous-theme-born-from-two.html
sudo apt-get install arc-flatabulous-theme
sudo apt install --reinstall hplip

# Make nvim folders and stuff
mkdir ~/.config/nvim
ln -s ~/Dropbox/DotFiles/init.vim ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/after ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/colors ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/syntax ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/.zsh ~/

echo "set editing-mode vi" >> ~/.inputrc
echo "set keymap vi-command" >> ~/.inputrc
echo "source ~/Dropbox/DotFiles/zshrc" >> ~/.zshrc
echo "source ~/Dropbox/DotFiles/tmux.conf" >> ~/.tmux.conf
touch ~/.zprofile

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

# ************* Python ********************
sudo pip install virtualenv
sudo pip install virtualenvwrapper
sudo pip install autoenv

# sudo apt install python3-pip
# pip3 install --upgrade pip
# ~/.profile:
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Development
# source /usr/local/bin/virtualenvwrapper.sh

# fix nvim requires python3 thing
pip2 install --upgrade pip
pip3 install --upgrade pip
pip3 install --user neovim
pip2 install --user neovim

git config --global user.email "jordanmmck@gmail.com"
git config --global user.name "Jordan McKinney"
git config --global push.default simple

# docker?

# ************* Nvim *************************
# :PlugInstall
# :UpdateRemotePlugins
#
# ************* Etc *************************
# install chrome from the chrome site
#
# ************* Software Center *************
# gnome tweaktool, unity tweak
#
# ************* Fonts ***********************
# default: ubuntu regular 10.5
# document: sans regular 10.5
# monospace: source code pro for powerline medium 10.5
# window title: robot mono for powerline bold 10
#
# ************* Startup ********************
# dropbox: dropbox start -i
# redshift: /usr/bin/redshift
#
# ************* Sleep Disks ********************
# go into `disks`
