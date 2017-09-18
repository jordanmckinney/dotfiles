export PATH="$PATH:/home/jordan/.local/bin"
export PATH="$PATH:/opt"
export TERM="xterm-256color"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# anaconda
export PATH="/home/jordan/anaconda3/bin:$PATH"

# cuda for tensorflow
export PATH=/usr/local/cuda-8.0.61/bin${PATH:+:${PATH}}
export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH=/usr/local/cuda/lib64/

# eth
export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100

# autoenv
source /usr/local/bin/activate.sh

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/local/bin/virtualenvwrapper.sh
