# Plugins {{{
#===============================================================

    plugins=(git vi-mode autoenv autosuggestions)

#===============================================================
# }}}

# Appearance {{{
#===============================================================

    BASE16_SHELL=$HOME/.config/base16-shell/
    [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

    ZSH_THEME="robbyrussell"
    # ZSH_THEME="bira"
    # ZSH_THEME="cloud"

    # Uncomment the following line to disable colors in ls.
    # DISABLE_LS_COLORS="true"

    # Uncomment the following line to disable auto-setting terminal title.
    # DISABLE_AUTO_TITLE="true"

#===============================================================
# }}}

# Exports {{{
#===============================================================

    # Path to oh-my-zsh installation.
    export ZSH=/home/jordan/.oh-my-zsh
    export TERM="xterm-256color"
    # export PATH="/home/jordan/anaconda3/bin:$PATH"

    source /usr/local/bin/virtualenvwrapper.sh
    # $ pip install autoenv
    source /usr/local/bin/activate.sh
    # source ~/.autoenv/activate.sh
    # pip should only run if there is a virtualenv currently activated
    # export PIP_REQUIRE_VIRTUALENV=true

    # Preferred editor for local and remote sessions
    if [[ -n $SSH_CONNECTION ]]; then
      export EDITOR='vim'
    else
      export EDITOR='nvim'
    fi
    # ssh
    # export SSH_KEY_PATH="~/.ssh/dsa_id"

    # docker completion path
    fpath=(~/.zsh/completion $fpath)
    autoload -Uz compinit && compinit -i

#===============================================================
# }}}

# Completion {{{
#===============================================================

    # Uncomment the following line to use hyphen-insensitive completion. Case
    # sensitive completion must be off. _ and - will be interchangeable.
    HYPHEN_INSENSITIVE="true"

    # Uncomment the following line to enable command auto-correction.
    ENABLE_CORRECTION="true"
    # Uncomment the following line to display red dots whilst waiting for completion.
    COMPLETION_WAITING_DOTS="true"

    # Uncomment the following line to use case-sensitive completion.
    # CASE_SENSITIVE="true"

#===============================================================
# }}}

# Aliases {{{
#===============================================================

    # Set personal aliases, overriding those provided by oh-my-zsh libs,
    # plugins, and themes. Aliases can be placed here, though oh-my-zsh
    # users are encouraged to define aliases within the ZSH_CUSTOM folder.
    # For a full list of active aliases, run `alias`.

    alias shutdown='shutdown -h now'
    alias restart='shutdown -r now'
    alias cddot='cd ~/Dropbox/DotFiles/'
    alias cdjordan='cd ~/Git/jordanmckinney.github.io/'
    alias cdcode='cd ~/Dropbox/code/'
    alias cdvim='cd ~/Dropbox/REF/technologies'
    alias cdref='cd ~/Dropbox/REF'
    alias cdsref='cd ~/Dropbox/sREF'
    alias cdwork='cd ~/Dropbox/REF/work'
    alias cdmast='cd ~/Dropbox/sREF/mastery'
    alias v=nvim
    alias s=ls
    alias zz=exit
    alias dbu='docker-compose build'
    alias dup='docker-compose up'
    alias pmrun='python3 manage.py runserver'
    alias t='tree'

    # git stuff
    alias gadd='git add .'
    alias gpom='git push origin master'

#===============================================================
# }}}

# Updates {{{
#===============================================================

    # Uncomment the following line to disable bi-weekly auto-update checks.
    # DISABLE_AUTO_UPDATE="true"
    # Uncomment the following line to change how often to auto-update (in days).
    # export UPDATE_ZSH_DAYS=13

#===============================================================
# }}}

# vi mode {{{
#===============================================================

    # enable vi mode!
    # bindkey -v
    # export KEYTIMEOUT=1

    # function zle-line-init zle-keymap-select {
    #     VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
    #     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $(git_custom_status) $EPS1"
    #     zle reset-prompt
    # }
    # RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"

#===============================================================
# }}}

# Etc {{{
#===============================================================

    source $ZSH/oh-my-zsh.sh
    source ~/.bin/tmuxinator.zsh
    # disable ctrl-s scroll lock
    stty -ixon

    # Uncomment the following line if you want to disable marking untracked files
    # under VCS as dirty. This makes repository status check for large repositories
    # much, much faster.
    # DISABLE_UNTRACKED_FILES_DIRTY="true"

    # Uncomment the following line if you want to change the command execution time
    # stamp shown in the history command output.
    # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
    # HIST_STAMPS="mm/dd/yyyy"

    # Would you like to use another custom folder than $ZSH/custom?
    # ZSH_CUSTOM=/path/to/new-custom-folder

    # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
    # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
    # Example format: plugins=(rails git textmate ruby lighthouse)
    # Add wisely, as too many plugins slow down shell startup.
    plugins=(git)

#===============================================================
# }}}

# vim:foldmethod=marker:foldlevel=0
