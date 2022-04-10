# Path to your oh-my-zsh installation.
export ZSH="/Users/work/.oh-my-zsh"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

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
