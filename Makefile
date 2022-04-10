all: update_tmux update_vimrc

# updates local .tmux.conf
update_tmux:
	rm -rf ~/.tmux.conf
	cp configs/.tmux.conf ~/.tmux.conf

update_vimrc:
	rm -rf ~/.vimrc
	cp configs/.vimrc ~/.vimrc

update_vim:
	rm -rf ~/configs/neovim
	cp -R configs/neovim ~/.configs/neovim

update_sr:
	cp configs/conf ~/.config/surfraw/

local_update_vimrc:
	rm -rf ~/environment-/configs/.vimrc
	cp ~/.vimrc ~/environment-/configs/.vimrc
