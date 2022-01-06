rm -rf ~/.tmux.conf
rm -rf ~/.tmux.tcl
rm -rf ~/.vimrc

cp $(pwd)/configs/.tmux.conf ~/.tmux.conf
cp $(pwd)/configs/.tmux.tcl ~/.tmux.tcl
cp $(pwd)/configs/.vimrc ~/.vimrc
