all: update_tmux update_vimrc

# updates local .tmux.conf
update_tmux:
	rm -rf ~/.tmux.conf
	cp configs/.tmux.conf ~/.tmux.conf

update_vimrc:
	rm -rf ~/.vimrc
	cp configs/.vimrc ~/.vimrc

local_update_vimrc:
	rm -rf ~/environment-/configs/.vimrc
	cp ~/.vimrc ~/environment-/configs/.vimrc
