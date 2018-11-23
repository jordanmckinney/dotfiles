# tmux {{{
#===============================================================

    if [ "$TMUX" = "" ]; then tmux; fi

#===============================================================
# }}}

# Plugins {{{
#===============================================================

    plugins=(
        git 
        vi-mode 
        autosuggestions 
        python
        yarn
        zsh-syntax-highlighting
    )

#===============================================================
# }}}

# Appearance {{{
#===============================================================

    # BASE16_SHELL=$HOME/.config/base16-shell/
    # [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

    ZSH_THEME="robbyrussell"

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

#===============================================================
# }}}

# Completion {{{
#===============================================================

    # Hyphen-insensitive completion. Case
    # sensitive completion must be off. _ and - will be interchangeable.
    HYPHEN_INSENSITIVE="true"

    # Enable command auto-correction.
    ENABLE_CORRECTION="true"

    # Display red dots whilst waiting for completion.
    COMPLETION_WAITING_DOTS="true"

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
    alias cdcode='cd ~/Development/code/'
    alias cdvim='cd ~/Development/reference/technologies'
    alias cdref='cd ~/Development/reference'
    alias v=nvim
    alias s=ls
    alias zz=exit
    alias t='tree'

    # git stuff
    alias gadd='git add .'
    alias gst='git status'
    alias mux='tmuxinator'
    alias gpush='
        git add . &&
        git commit -m "..." &&
        git push'
    alias gpull='
        echo "========== Dotfiles ==========" &&
        git -C ~/Development/DotFiles pull &&
        echo "" &&
        echo "============ Ref =============" &&
        git -C ~/Development/reference pull &&
        echo "" &&
        echo "============ Code ============" &&
        git -C ~/Development/code pull &&
        echo "" &&
        echo "=========== Notes ============" &&
        git -C ~/Development/notes pull &&
        echo "" &&
        echo "========== Jordanmmck ========"  &&
        git -C ~/Development/jordanmmck.github.io pull &&
        echo ""'
    alias gstatus='
        echo "========== Dotfiles ==========" &&
        git -C ~/Development/DotFiles status &&
        echo "" &&
        echo "============ Ref =============" &&
        git -C ~/Development/reference status &&
        echo "" &&
        echo "============ Code ============" &&
        git -C ~/Development/code status &&
        echo "" &&
        echo "=========== Writing ============" &&
        git -C ~/Development/writing status &&
        echo "" &&
        echo "========== Jordanmmck ========"  &&
        git -C ~/Development/jordanmmck.github.io status &&
        echo ""'

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

# Source plugins {{{
#===============================================================

    # disable ctrl-s scroll lock
    stty -ixon

    # tmux completion
    source ~/.bin/tmuxinator.zsh

    # vi mode
    source /Users/jordan/.oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh

    # zsh autosuggestions
    source /Users/jordan/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

    # zsh syntax highlighting
    source /Users/jordan/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

    autoload -U promptinit; promptinit
    prompt pure

#===============================================================
# }}}

# vim:foldmethod=marker:foldlevel=0
