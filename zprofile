export PATH="$PATH:/home/jordan/.local/bin"
export TERM="xterm-256color"

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
source /usr/local/bin/virtualenvwrapper.sh

# autoenv
source /usr/local/bin/activate.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
