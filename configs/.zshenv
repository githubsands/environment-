alias vim='nvim'
alias vi='nvim'

# PYTHON
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# TMUX
function ts() {
  if [ -z "$TMUX" ]; then
    # not in tmux
    tmux attach-session -t $1
  else
    # inside tmux
    tmux switch-client -t $1
 fi
}

function tmux_switch_session() {
    tmux switch -t $1
}

