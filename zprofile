# Brew
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# hyperledger
export PATH="$PATH:/Users/jordan/Development/hyperledger/fabric-samples/bin"
export FABRIC_CFG_PATH="/Users/jordan/Development/hyperledger/fabric-samples/first-network"

export PATH="$PATH:$HOME/.nvm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export EDITOR="nvim"
