#!/bin/bash

ln -s ~/Development/DotFiles/.zsh ~/
ln -s ~/Development/DotFiles/tmuxinator ~/.tmuxinator
echo "source ~/.bin/tmuxinator.zsh" >> ~/.zshrc
echo "source ~/Development/DotFiles/zshrc" >> ~/.zshrc
echo "source ~/Development/DotFiles/tmux.conf" >> ~/.tmux.conf
cp ~/Development/DotFiles/.zprofile ~/.zprofile
