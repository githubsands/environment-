# PYTHON
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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

function tmux_complete_session() {
  local IFS=$'\n'
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( ${COMPREPLY[@]:-} $(compgen -W "$(tmux -q list-sessions | cut -f 1 -d ':')" -- "${cur}") )
}

function tmux_switch_session() {
    tmux switch -t $1
}

export -f ts tmux_complete_session tmux_switch_session
complete -F ts tmux_complete_session tmux_switch_tession
