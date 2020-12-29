git clone https://github.com/tcltk/tcl
cd tcl
./configure
sudo make install

git clone https://github.com/ershov/tmux
sh autogen.sh
./configure
make

brew install neovim
(cd config && cp * ~)

chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
