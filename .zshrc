export ZSH=/Users/smahr/.oh-my-zsh

ZSH_THEME="agnoster"

# User configuration for agnoster theme
DEFAULT_USER="smahr"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# plugins=(rails git textmate ruby lighthouse)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Source relevent dotfiles
for file in ~/.{aliases,exports,functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# TODO: where do these go
[ -s "/Users/smahr/.scm_breeze/scm_breeze.sh" ] && source "/Users/smahr/.scm_breeze/scm_breeze.sh"

export NVM_DIR="/Users/smahr/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
