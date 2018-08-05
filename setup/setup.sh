# SOFTWARE CENTER
# spotify
# brave
# chromium
# sublime
# slack
# dropbox
# gnome tweak

# settings >
# keyboard shortcuts
# remap caps lock

sudo apt install curl tree htop tmux zsh xsel silversearcher-ag trimage git

git config --global user.email "jordanmmck@gmail.com" && \
git config --global user.name "Jordan McKinney" && \
git config --global push.default simple

ssh-keygen -t rsa -b 4096 -C "jordanmmck@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

sudo apt install python-pip python3-pip
pip install virtualenv
pip3 install virtualenv
pip install virtualenvwrapper
pip3 install virtualenvwrapper
pip install autoenv
pip3 install autoenv

rmdir ~/Music && \
rmdir ~/Public && \
rmdir ~/Videos && \
rmdir ~/Templates
# mkdir ~/Development

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt update
sudo apt install libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

ln -s ~/Development/DotFiles/.zsh ~/
ln -s ~/Development/DotFiles/tmuxinator ~/.tmuxinator
echo "source ~/.bin/tmuxinator.zsh" >> ~/.zshrc
echo "source ~/Development/DotFiles/zshrc" >> ~/.zshrc
echo "source ~/Development/DotFiles/tmux.conf" >> ~/.tmux.conf
cp ~/Development/DotFiles/.zprofile ~/.zprofile

curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -

# restart
rbenv install 2.5.1
rbenv global 2.5.1

gem install tmuxinator
git clone https://github.com/tmuxinator/tmuxinator.git
mkdir ~/.bin
cp tmuxinator/completion/tmuxinator.zsh ~/.bin
rm -rf tmuxinator

# NEOVIM
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

pip2 install neovim
pip3 install neovim
pip2 install --upgrade neovim
pip3 install --upgrade neovim

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
nvm install node
npm install npm -g
npm install -g neovim

gem install neovim

git clone https://github.com/powerline/fonts ~/.local/share/fonts

mkdir ~/.config/nvim
ln -s ~/Development/DotFiles/init.vim ~/.config/nvim/ && \
ln -s ~/Development/DotFiles/vim/after ~/.config/nvim/ && \
ln -s ~/Development/DotFiles/vim/colors ~/.config/nvim/ && \
ln -s ~/Development/DotFiles/vim/syntax ~/.config/nvim/

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ~/.config/nvim
git clone https://github.com/Shougo/deoplete.nvim.git

# ```
# :PlugInstall
# :PlugUpdate
# :UpdateRemotePlugins
# :checkhealth
# ```

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

# add .env files to ~ and dev:
if [ -n "$VIRTUAL_ENV" ] ; then
    deactivate
fi

#sudo add-apt-repository ppa:daniruiz/flat-remix
#sudo apt-get update
#sudo apt-get install flat-remix-gnome
sudo apt install gnome-shell-extensions

# shell
cd /tmp && rm -rf flat-remix-gnome-theme &&
git clone https://github.com/daniruiz/flat-remix-gnome &&
mkdir -p ~/.themes && cp -r /tmp/flat-remix-gnome/Flat-Remix* ~/.themes &&
gsettings set org.gnome.shell.extensions.user-theme name "Flat-Remix";

# icons
cd /tmp && rm -rf flat-remix &&
git clone https://github.com/daniruiz/flat-remix &&
mkdir -p ~/.icons && cp -r flat-remix/Flat-Remix* ~/.icons/ &&
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix"

# windows
cd /tmp && rm -rf flat-remix-gtk &&
git clone https://github.com/daniruiz/flat-remix-gtk &&
mkdir -p ~/.themes && cp -r flat-remix-gtk/Flat-Remix-GTK* ~/.themes/ &&
gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK"

# Set font to Source Code Pro for Powerline in system 
# Also set other fonts
# add new ssh key to github
# go into disks, make harddrive sleep
# Set terminal to theme colours, transparency
# set lock screen (settings)
# search "dock" to set dock to hide
