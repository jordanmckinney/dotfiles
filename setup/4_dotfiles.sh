#!/bin/bash

ln -s ~/Dropbox/DotFiles/.zsh ~/
ln -s ~/Dropbox/DotFiles/tmuxinator ~/.tmuxinator
echo "set editing-mode vi" >> ~/.inputrc
echo "set keymap vi-command" >> ~/.inputrc
echo "source ~/.bin/tmuxinator.zsh" >> ~/.zshrc
echo "source ~/Dropbox/DotFiles/zshrc" >> ~/.zshrc
echo "source ~/Dropbox/DotFiles/tmux.conf" >> ~/.tmux.conf
cp ~/Dropbox/DotFiles/.zprofile ~/.zprofile
