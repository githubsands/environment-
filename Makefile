all: update_tmux

# updates local .tmux.conf
update_tmux:
	rm -rf ~/.tmux.conf
	cp configs/.tmux.conf ~/.tmux.conf
