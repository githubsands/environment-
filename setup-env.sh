#!/bin/bash

OS="$(uname -s)"
case "${OS}" in
    Linux*)     OS=Linux;;
    Darwin*)    OS=Mac;;
    *)          OS="UNKNOWN:${OS}"
esac

if [ $OS -eq "Mac"];
then
    brew install neovim
    brew install rust
    brew install nimble
    npm install -g wscat
    brew install kubectx
fi

git clone https://github.com/tcltk/tcl
cd tcl
./configure
sudo make install

git clone https://github.com/ershov/tmux
sh autogen.sh
./configure
make

(cd config && cp * ~)

chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/rust-analyzer/rust-analyzer && cd rust-analyzer
cargo xtask install --server
pip install pynvim

curl -L https://nixos.org/nix/install | sh

# LSPs

npm i -g pyright

brew install nimble
rustup component add rls

# websocket client
npm install -g wscat

# ka
