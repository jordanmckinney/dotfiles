if [ "$TMUX" = "" ]; then tmux; fi

plugins=(
    git 
    vi-mode 
    autosuggestions 
    python
    yarn
    zsh-syntax-highlighting
)

# pure theme
autoload -U promptinit; promptinit
prompt pure

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


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias setup='sh ~/Development/dotfiles/js/eslint-prettier-config.sh'
alias dot='code ~/Development/dotfiles'
alias cs='code ~/Development/cs'
alias notes='code ~/Documents/notes'
alias ideas='code ~/Documents/ideas'
alias j='code ~/Documents/journal'
alias jordanmmck='code ~/Development/jordanmmck'
alias react='code ~/Development/react-course'

alias tmux='tmux -2'
alias py='bpython'
alias python='python3'

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

# tmux completion
source ~/.bin/tmuxinator.zsh

# vi mode
source /Users/jordan/.oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh

# zsh autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting
source /Users/jordan/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh