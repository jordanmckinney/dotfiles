#!/bin/bash

ln -s ~/Development/DotFiles/.zsh ~/
ln -s ~/Development/DotFiles/tmuxinator ~/.tmuxinator
echo "set editing-mode vi" >> ~/.inputrc
echo "set keymap vi-command" >> ~/.inputrc
echo "source ~/.bin/tmuxinator.zsh" >> ~/.zshrc
echo "source ~/Development/DotFiles/zshrc" >> ~/.zshrc
echo "source ~/Development/DotFiles/tmux.conf" >> ~/.tmux.conf
cp ~/Dropbox/DotFiles/.zprofile ~/.zprofile
