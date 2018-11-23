xcode-select --install

## homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install postgresql
brew install zsh
brew install yarn
brew install tree
brew install htop
brew install neovim
brew install zsh zsh-completions
brew install neovim
brew install the_silver_searcher

## set zsh as default
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting

## git
brew install git
git config --global user.name "jordanmmck"
git config --global user.email "jordanmmck@gmail.com"
git config --global push.default simple
git config --global color.ui auto

## ssh
ssh-keygen -t rsa -b 4096 -C "jordanmmck@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

## Python
brew install python3 pipenv
brew install python2
# :checkhealth

## Ruby
brew install autoconf automake gdbm gmp libksba libtool libyaml openssl pkg-config readline
ln -s ~/Development/DotFiles/gemrc ~/.gemrc
curl -L https://get.rvm.io | bash -s stable --ruby
gem install tmuxinator
mkdir ~/.bin
git clone https://github.com/tmuxinator/tmuxinator.git
mv ~/.bin/tmuxinator/completion/tmuxinator.zsh ~/.bin/
rm -rf ~/.bin/tmuxinator

## VSCode
brew cask install visual-studio-code

## dotfile stuff
echo "source ~/Development/DotFiles/zshrc" >> ~/.zshrc
ln -s ~/Development/DotFiles/tmux.conf ~/.tmux.conf
ln -s ~/Development/DotFiles/zprofile ~/.zprofile
ln -s ~/Development/DotFiles/tmuxinator ~/.tmuxinator
ln -s ~/Development/DotFiles/gemrc ~/.gemrc

## neovim
pip install neovim
pip3 install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Lightline Fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

## Deoplete
mkdir ~/.config/nvim
git clone ~/.config/nvim/https://github.com/Shougo/deoplete.nvim.git
# :UpdateRemotePlugins, etc. make sure using brew python providers!

## zsh syntax highlighting
# check if already in ~/.oh-my-zsh/plugins
# if not clone it in there

# terminal theme
https://draculatheme.com/iterm/


# ln -s ~/Development/DotFiles/.zsh ~/
# echo "source ~/.bin/tmuxinator.zsh" >> ~/.zshrc

# mkdir ~/.config/nvim
# ln -s ~/Development/DotFiles/init.vim ~/.config/nvim/ && \
# ln -s ~/Development/DotFiles/vim/after ~/.config/nvim/ && \
# ln -s ~/Development/DotFiles/vim/colors ~/.config/nvim/ && \
# ln -s ~/Development/DotFiles/vim/syntax ~/.config/nvim/

# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# cd ~/.config/nvim
# git clone https://github.com/Shougo/deoplete.nvim.git
