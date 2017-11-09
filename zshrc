# tmux {{{
#===============================================================

    if [ "$TMUX" = "" ]; then tmux; fi

#===============================================================
# }}}

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

    # Uncomment the following line to disable colors in ls.
    # DISABLE_LS_COLORS="true"

    # Uncomment the following line to disable auto-setting terminal title.
    # DISABLE_AUTO_TITLE="true"

#===============================================================
# }}}

# Exports {{{
#===============================================================

    # Preferred editor for local and remote sessions
    if [[ -n $SSH_CONNECTION ]]; then
      export EDITOR='vim'
    else
      export EDITOR='nvim'
    fi

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
    alias cddot='cd ~/Development/DotFiles/'
    alias cdjordan='cd ~/Git/jordanmckinney.github.io/'
    alias cdcode='cd ~/Development/code/'
    alias cdvim='cd ~/Development/REF/technologies'
    alias cdref='cd ~/Development/REF'
    alias cdsref='cd ~/Dropbox/sREF'
    alias cdwork='cd ~/Development/REF/work'
    alias cdmast='cd ~/Dropbox/sREF/mastery'
    alias v=nvim
    alias s=ls
    alias zz=exit
    alias dbu='docker-compose build'
    alias dup='docker-compose up -d'
    alias pmrun='python3 manage.py runserver'
    alias t='tree'
    alias pi='ssh pi@192.168.0.200'
    alias dac='deactivate'
    alias serv='python manage.py runserver'

    # git stuff
    alias gadd='git add .'
    alias gpom='git push origin master'
    alias gst='git status'
    alias mux='tmuxinator'
    alias gpull='
        echo "========== Dotfiles ==========" &&
        git -C ~/Development/DotFiles pull &&
        echo "========= Etherplace =========" &&
        git -C ~/Development/etherplace pull &&
        echo "============ Ref =============" &&
        git -C ~/Development/REF pull &&
        echo "=========== Block ============" &&
        git -C ~/Development/blockchain pull &&
        echo "========== Jordanmmck ========"  &&
        git -C ~/Development/jordanmmck.github.io pull &&
        echo "============ Code ============" &&
        git -C ~/Development/code pull'
    alias gstatus='
        echo "========== Dotfiles ==========" &&
        git -C ~/Development/DotFiles status &&
        echo "========= Etherplace =========" &&
        git -C ~/Development/etherplace status &&
        echo "============ Ref =============" &&
        git -C ~/Development/REF status &&
        echo "=========== Block ============" &&
        git -C ~/Development/blockchain status &&
        echo "========== Jordanmmck ========"  &&
        git -C ~/Development/jordanmmck.github.io status &&
        echo "============ Code ============" &&
        git -C ~/Development/code status'

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

    # disable ctrl-s scroll lock
    stty -ixon

    # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
    # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
    # Example format: plugins=(rails git textmate ruby lighthouse)
    # Add wisely, as too many plugins slow down shell startup.
    plugins=(git)

#===============================================================
# }}}

# vim:foldmethod=marker:foldlevel=0
