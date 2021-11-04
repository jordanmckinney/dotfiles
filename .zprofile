# Brew
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export PATH="$PATH:$HOME/.nvm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="/Users/jordan/.deno/bin:$PATH"

export EDITOR="nvim"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export ANDROID_HOME=/Users/jordan/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/jordan/Library/Android/sdk

export PATH="$PATH:/Users/jordan/go/bin"
export PATH="/Users/jordan/Library/Python/3.7/bin:$PATH"export PATH="/Users/jordan/.local/share/solana/install/active_release/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
