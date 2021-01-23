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
