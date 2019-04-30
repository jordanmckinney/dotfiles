xcode-select --install

## homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install zsh
brew install yarn
brew install tree
brew install htop
brew install neovim
brew install zsh zsh-completions
brew install the_silver_searcher

## set zsh as default
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## git
brew install git
# all this does is point to the gitconfig (no dot!)
cp ~/Development/dotfiles/.gitconfig ~

## ssh
ssh-keygen -t rsa -b 4096 -C "jordanmmck@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

## Ruby
brew install autoconf automake gdbm gmp libksba libtool libyaml openssl pkg-config readline
ln -s ~/Development/dotfiles/.gemrc ~/.gemrc
curl -L https://get.rvm.io | bash -s stable --ruby
gem install tmuxinator
mkdir ~/.bin
git clone https://github.com/tmuxinator/tmuxinator.git
mv ~/.bin/tmuxinator/completion/tmuxinator.zsh ~/.bin/
rm -rf ~/.bin/tmuxinator

## zsh, tmux, nvim dotfiles
echo "source ~/Development/dotfiles/.zshrc" >> ~/.zshrc
ln -s ~/Development/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/Development/dotfiles/.zprofile ~/.zprofile
ln -s ~/Development/dotfiles/.tmuxinator ~/.tmuxinator
mkdir ~/.config/nvim
ln -s ~/Development/dotfiles/vim/syntax ~/.config/nvim/
ln -s ~/Development/dotfiles/vim/init.vim ~/.config/nvim/

## VSCode dotfiles/settings
ln -s /Users/jordan/Development/dotfiles/vscode/settings.json /Users/jordan/Library/Application\ Support/Code/User/settings.json
ln -s /Users/jordan/Development/dotfiles/vscode/keybindings.json /Users/jordan/Library/Application\ Support/Code/User/keybindings.json
ln -s /Users/jordan/Development/dotfiles/vscode/snippets/ /Users/jordan/Library/Application\ Support/Code/User

## eslint, etc
npm install -g create-react-app eslint eslint-config-airbnb eslint-config-prettier eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-prettier eslint-plugin-react neovim npm npx prettier pure-prompt webpack webpack-dev-server 

## neovim
pip install neovim
pip3 install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Python
brew install python3 pipenv
brew install python2
### fancy python interpreter
pip install bpython
# :checkhealth

## FireCode Font
https://github.com/tonsky/FiraCode

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

brew cask install insomnia

## VSCode key repeat
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false