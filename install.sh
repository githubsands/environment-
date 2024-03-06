if [ -z ${EMAIL}]; then echo "EMAIL is unset"; exit; fi
if [ -z ${NAME}]; then echo "NAME is unset"; exit; fi

PLATFORM=$(uname)

if [[ "$PLATFORM" == Darwin ]]; then

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

pip3 install --user pynvim

brew install npm
brew install nvm
brew install rustup
brew install docker
brew install kubernetes
brew install golang
brew install rust
brew install python
brew install fzf
brew install ag
brew install gpg
brew install robotsandpencils/made/xcodes
brew install tmux
brew install ccat
brew install wget

xcodes install 10.2.1 # <- needs to be done manually
fi

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

rustup component add clippy
rustup component add rustfmt
rustup component add rust-src

chsh -s $(which zsh)

sh <(curl -L https://nixos.org/nix/install)

chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git config --global user.email ${EMAIL}
git config --global user.name ${NAME}

env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest && mv lf /usr/local/bin
curl -sS https://webi.sh/nerdfont | sh

mkdir -p ~/.config/nvim
cp init.lua /Users/${USER}/.config/nvim
pip3 install --user pynvim
