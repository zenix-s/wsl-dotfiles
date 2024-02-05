export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="aussiegeek"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH="$PATH:/home/serferna/.local/bin"

alias francinette=/home/serferna/francinette/tester.sh
alias paco=/home/serferna/francinette/tester.sh
