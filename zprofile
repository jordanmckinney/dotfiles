export PATH="$PATH:/home/jordan/.local/bin"

# pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#eval "$(pyenv init -)"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/home/jordan/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
eval "$(rbenv init -)"

# eth
export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100

# autoenv
source /home/jordan/.local/bin/activate.sh

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /home/jordan/.local/bin/virtualenvwrapper.sh
