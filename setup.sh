#!/bin/bash

mkdir ~/.config
mkdir ~/.config/nvim

# echo "source ~/Dropbox/DotFiles/init.vim" > ~/.config/nvim/init.vim
rm ~/.config/nvim/init.vim
ln -s ~/Dropbox/DotFiles/init.vim ~/.config/nvim/
echo "source ~/Dropbox/DotFiles/init.vim" > ~/.vimrc

rm ~/.config/nvim/after
rm ~/.config/nvim/colors
rm ~/.config/nvim/syntax
ln -s ~/Dropbox/DotFiles/vim/after ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/colors ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/syntax ~/.config/nvim/

rm ~/.vim
ln -s ~/.config/nvim ~/
ln -s ~/.local/share/nvim/plugged ~/nvim/
mv ~/nvim ~/.vim

rm ~/.zsh
ln -s ~/Dropbox/DotFiles/.zsh ~/

echo "set editing-mode vi" > ~/.inputrc
echo "set keymap vi-command" >> ~/.inputrc

cp ./.zsh/vi-mode/vi-mode.plugin.zsh \
    ~/.oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh
