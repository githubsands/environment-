OS="$(uname -s)"
case "${unameOut}" in
    Linux*)     OS=Linux;;
    Darwin*)    OS=Mac;;
    CYGWIN*)    OS=Cygwin;;
    MINGW*)     OS=MinGw;;
    *)          OS="UNKNOWN:${unameOut}"
esac

if [ $OS -eq "Mac"];
then
    #TODO change on distro
    yum -y install neovim
fi

if [ $OS -eq "Linux"];
then
    brew install neovim
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
