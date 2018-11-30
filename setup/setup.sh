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

## git
brew install git
cp ~/Development/DotFiles/.gitconfig ~

## ssh
ssh-keygen -t rsa -b 4096 -C "jordanmmck@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

## Ruby
brew install autoconf automake gdbm gmp libksba libtool libyaml openssl pkg-config readline
ln -s ~/Development/DotFiles/gemrc ~/.gemrc
curl -L https://get.rvm.io | bash -s stable --ruby
gem install tmuxinator
mkdir ~/.bin
git clone https://github.com/tmuxinator/tmuxinator.git
mv ~/.bin/tmuxinator/completion/tmuxinator.zsh ~/.bin/
rm -rf ~/.bin/tmuxinator

## dotfile stuff
echo "source ~/Development/DotFiles/zshrc" >> ~/.zshrc
ln -s ~/Development/DotFiles/tmux.conf ~/.tmux.conf
ln -s ~/Development/DotFiles/zprofile ~/.zprofile
ln -s ~/Development/DotFiles/tmuxinator ~/.tmuxinator
ln -s ~/Development/DotFiles/gemrc ~/.gemrc
mkdir ~/.config/nvim
ln -s ~/Development/DotFiles/vim/after ~/.config/nvim/ && \
ln -s ~/Development/DotFiles/vim/syntax ~/.config/nvim/

## neovim
pip install neovim
pip3 install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Python
brew install python3 pipenv
brew install python2
# :checkhealth

## Lightline Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

## Deoplete
git clone ~/.config/nvim/https://github.com/Shougo/deoplete.nvim.git
### :UpdateRemotePlugins, etc. make sure using brew python providers!

## ZSH
### pure https://github.com/sindresorhus/pure
npm install --global pure-prompt
### clone into ~/.oh-my-zsh/custom/plugins
### zsh-autosuggestions 
rvm install ruby-2.5.3

## iterm
### theme, clone into development, source theme in iterm settings
https://draculatheme.com/iterm/

## Ethereum
npm install -g truffle
