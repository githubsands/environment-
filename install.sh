if [ -z ${EMAIL}]; then echo "EMAIL is unset"; exit; fi
if [ -z ${NAME}]; then echo "NAME is unset"; exit; fi

brew install npm
brew install nvm
brew install rustup
brew install docker
brew install kubernetes
brew install golang
brew install rust
brew install python
brew install ag
brew install gpg

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

rustup component add clippy
rustup component add rustfmt
rustup component add rust-src

sh <(curl -L https://nixos.org/nix/install)

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git config --global user.email ${EMAIL}
git config --global user.name ${NAME}
