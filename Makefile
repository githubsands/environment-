# updates local .tmux.conf
.PHONY:
update_tmux:
	rm -rf ~/.tmux.conf
	cp configs/.tmux.conf ~/.tmux.conf

.PHONY:
update_vimrc:
	rm -rf ~/.vimrc
	cp configs/.vimrc ~/.vimrc

.PHONY:
update_vim:
	rm -rf ~/configs/neovim
	cp -R configs/neovim ~/.configs/neovim

.PHONY:
update_sr:
	cp configs/conf ~/.config/surfraw/

.PHONY:
update_zsh:
	cp configs/.zshrc ~/.zshrc
	cp configs/.zshenv ~/.zshenv

.PHONY:
local_update_vimrc:
	rm -rf ~/environment-/configs/.vimrc
	cp ~/.vimrc ~/environment-/configs/.vimrc
