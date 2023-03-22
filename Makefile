# run setup.sh - may not be fully automated

.PHONY:
install: install.sh

.PHONY:
update_tmux:
	rm -rf ~/.tmux.conf
	cp configs/.tmux.conf ~/.tmux.conf

.PHONY:
update_vimrc:
	rm -rf ~/.vimrc
	cp configs/.vimrc ~/.vimrc

.PHONY:
update_neovim:
	rm -rf ~/.config/nvim
	cp -R configs/neovim ~/.config/nvim

.PHONY:
update_sr:
	cp configs/conf ~/.config/surfraw/

.PHONY:
update_zsh:
	cp configs/.zshrc ~/.zshrc
	cp configs/.zshenv ~/.zshenv

.PHONY:
update_commands:
	(cd cmds && cp * /usr/local/bin)

.PHONY:
update_from_local_vimrc:
	rm -rf ~/environment-/configs/.vimrc
	cp ~/.vimrc ~/environment-/configs/.vimrc

.PHONY:
# NOTE: tmux prefix will not work if any line within .tmux.conf does not work
update_from_local_tmux:
	rm -rf ~/environment-/configs/.tmux.conf
	cp ~/.tmux.conf ~/environment-/configs/.tmux.conf

.PHONY:
update_zsh_from_local:
	cp ~/.zshrc ~/environment-/configs/.zshrc
