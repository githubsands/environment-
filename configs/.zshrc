# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"
export EDITOR="nvim"
export SHELL="zsh"

alias n='nvim'
alias git='g'
alias kubectl='k'
alias docker='d'

plugins=(
    git
    zsh-autosuggestions
    zsh-history-substring-search
    terraform
    vim-interaction
    docker
    kubectl
)

source $ZSH/oh-my-zsh.sh
