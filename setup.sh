xcode-select --install

## homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install yarn
brew install tree
brew install htop
brew install neovim
brew install zsh
brew install zsh-syntax-highlighting
brew install the_silver_searcher

## set zsh as default
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## git
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
mkdir ~/.bin && cd ~/.bin
git clone https://github.com/tmuxinator/tmuxinator.git
mv ~/.bin/tmuxinator/completion/tmuxinator.zsh ~/.bin/
rm -rf ~/.bin/tmuxinator

## link zsh, tmux, nvim dotfiles
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
npm install -g create-react-app eslint eslint-config-airbnb eslint-config-prettier eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-prettier eslint-plugin-react neovim npm npx prettier pure-prompt webpack webpack-dev-server babel-eslint

## Python
brew install python3 pipenv
brew install python@2
pip install neovim
pip3 install bpython neovim
pip3 install pylint
pip3 install autopep8

## neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ~/.config/nvim
git clone https://github.com/Shougo/deoplete.nvim.git
### :UpdateRemotePlugins
### :checkhealth
gem install neovim

## FireCode Font
https://github.com/tonsky/FiraCode
# set terminal font to firacode retina

## ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
npm install --global pure-prompt

## iterm
https://draculatheme.com/iterm/

## VSCode key repeat
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
## system key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# mos
brew cask install mos
brew install postgresql
