if [ "$TMUX" = "" ]; then tmux; fi

plugins=(
    git 
    vi-mode 
    autosuggestions 
    python
    yarn
    fast-syntax-highlighting
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# alias setup='sh ~/Development/dotfiles/js/eslint-prettier-config.sh'
alias dot='code ~/Development/dotfiles'
alias ref='code ~/Development/reference'
alias notes='code ~/Documents/notes'
alias ideas='code ~/Documents/ideas'
alias j='code ~/Documents/journal'
alias jordanmmck='code ~/Development/jordanmmck'
alias leet='code ~/Development/coding_problems'

alias tmux='tmux -2'
alias py='bpython'

alias c='code .'
alias v=nvim
alias s=ls
alias t='tree'

alias gadd='git add .'
alias gst='git status'
alias mux='tmuxinator'
alias gpush='git add . && git commit -m "..." && git push'
alias rmdocker='docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi -f $(docker images)'

# disable ctrl-s scroll lock
stty -ixon

source /Users/jordan/.oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh
source /Users/jordan/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/jordan/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# pure theme
autoload -U promptinit; promptinit
prompt pure