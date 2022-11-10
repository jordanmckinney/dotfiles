xcode-select --install
# sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
# sudo xcodebuild -runFirstLaunch

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install tmux tree htop the_silver_searcher

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
npm install --global pure-prompt
https://draculatheme.com/iterm/

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions 
# if you get: [oh-my-zsh] Insecure completion-dependent directories ...
# sudo chmod g+w /usr/local/share/zsh /usr/local/share/zsh/site-functions

ssh-keygen -t rsa -b 4096 -C "jordanmmck@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# all this does is point to the gitconfig (no dot!)
cp ~/Development/dotfiles/.gitconfig ~
echo "source ~/Development/dotfiles/.zshrc" >> ~/.zshrc
ln -s ~/Development/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/Development/dotfiles/.zprofile ~/.zprofile
# mkdir -p ~/.config/nvim
# ln -s ~/Development/dotfiles/vim/init.vim ~/.config/nvim/

ln -s /Users/jordan/Development/dotfiles/vscode/settings.json /Users/jordan/Library/Application\ Support/Code/User/settings.json
ln -s /Users/jordan/Development/dotfiles/vscode/keybindings.json /Users/jordan/Library/Application\ Support/Code/User/keybindings.json
ln -s /Users/jordan/Development/dotfiles/vscode/snippets/ /Users/jordan/Library/Application\ Support/Code/User

# https://opensource.com/article/19/5/python-3-default-mac
brew install pipenv
brew install pyenv
pyenv install 3.8.2
pyenv global 3.8.2
pip install neovim pylint autopep8 bpython pep8

## neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ~/.config/nvim
git clone https://github.com/Shougo/deoplete.nvim.git
### :UpdateRemotePlugins
### :checkhealth
ln -s ~/Development/dotfiles/.gemrc ~/.gemrc
# curl -sSL https://get.rvm.io | bash -s stable --ruby
# gem install neovim
yarn global add neovim

## FireCode Font
https://github.com/tonsky/FiraCode
# set terminal font to firacode retina

## VSCode key repeat
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
## system key repeat
defaults write -g ApplePressAndHoldEnabled -bool false

## eslint, etc
# npx install-peerdeps -g eslint-config-airbnb

npm install -g gatsby-cli
npm install --global pure-prompt

# npm install -g eslint eslint-config-airbnb eslint-config-prettier eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-prettier eslint-plugin-react neovim npm npx prettier pure-prompt webpack webpack-dev-server babel-eslint

# ln -s /Users/jordan/Development/dotfiles/js/.prettierrc.json /Users/jordan/.prettierrc.json
# ln -s /Users/jordan/Development/dotfiles/js/.eslintrc.json /Users/jordan/.eslintrc.json

# https://postgresapp.com/
sudo mkdir -p /etc/paths.d &&
echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp
# tell postgresapp to use postico instead of terminal

# java
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8
brew cask install adoptopenjdk13