* software update, restart
* make admin account
* make Applications folder in home folder (put new apps here)
* Safari > Preferences > General, deselect Open "safe" files after downloading
* System Preferences > Security & Privacy
  * Advanced > require admin password to access system-wide pref
  * Firewall > on
* Enable file vault
* set up timemachine backups

# Applications
* Firefox
* iterm2
* dropbox
* ledger live
* matlab
* sublime text
`brew cask install slack`
## Mouse
* logitech gaming software
* mos (smooth scrolling)
* reverse scrolling (reverse all but trackpad)

# Preferences
* dark mode
* general > use font smoothing
* dock > auto hide, minimize into icon
* keyboard > fast repeat
* keyboard > modifier keys > remap caps (for internal/ext keyboards)
* mouse > natural scrolling
* trackpad > tap to click
* printers > register printer
* sound > headphones through hdmi

# Dev stuff
`xcode-select --install`
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* add brew install to PATH `export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"` (put this is zprofile)
`brew doctor`
`brew update`
`brew outdated`
`brew upgrade <formula>`
`brew cleanup`
`brew install yarn`
`brew install postgresql`

## Terminal
`brew install git`
`git config --global user.name "jordanmmck"`
`git config --global user.email "jordanmmck@gmail.com"`
`git config --global color.ui auto` (put in .gitconfig?)
* setup .gitconfig
`mkdir $HOME/.ssh`
`chmod 0700 $HOME/.ssh`

* ZSH
brew install zsh zsh-completions
chsh -s $(which zsh)

* ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Neovim
`brew install neovim`
`export EDITOR="nvim"`
* point ~/.config/nvim/init.vim to dotfiles

## Python
`brew install python3 pipenv`
* use pip3 instead of pip
https://docs.python-guide.org/dev/virtualenvs/
`brew install python`

## Ruby
`brew install autoconf automake gdbm gmp libksba libtool libyaml openssl pkg-config readline`
`echo >> "gem: --no-ri --no-rdoc" >> .gemrc`
`curl -L https://get.rvm.io | bash -s stable --ruby`
`gem install <>`
`gem cleanup`

## Node
`brew install node`
PATH=/usr/local/share/npm/bin:$PATH
`sudo xcode-select -switch /usr/bin`

## Searching
brew install the_silver_searcher
brew install ack

## VSCode
`brew cask install visual-studio-code`
* preferences > settings: "telemetry.enableTelemetry": false, "telemetry.enableCrashReporter": false
* VSCodeVIM extension

