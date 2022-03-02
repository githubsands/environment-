#!/bin/bash

OS="$(uname -s)"
case "${OS}" in
    Linux*)     OS=Linux;;
    Darwin*)    OS=Mac;;
    *)          OS="UNKNOWN:${OS}"
esac

npm i -g pyright

if [ $OS -eq "Mac"];
then
    brew install neovim
    brew install rust
    brew install gpg
    brew install rust
    brew install golang
    brew install solidity
    brew install typescript
    brew install wscat
    brew install kafkacat
    brew install gpg
    brew install docker
    brew install kubernetes
fi

if [ $OS -eq "Linux"];
then
    yum -y install neovim
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

npm i -g pyright

rustup component add rls
