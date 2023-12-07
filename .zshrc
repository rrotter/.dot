# history
HISTSIZE=2000000
SAVEHIST=2000000
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS

# keybindings
bindkey -e # emacs bindings
bindkey \^U backward-kill-line

# misc shell settings
setopt AUTO_CD
setopt NO_CASE_GLOB
setopt EXTENDED_GLOB

# tab complete filepaths on empty buffer
function tab_on_empty_buffer {
  if [[ $#BUFFER == 0 ]]; then
    BUFFER="./"
    CURSOR="2"
    zle list-choices
  else
    zle expand-or-complete
  fi
}
zle -N tab_on_empty_buffer
bindkey '^I' tab_on_empty_buffer

# asdf initialization
if type brew &>/dev/null; then
  source $(brew --prefix asdf)/libexec/asdf.sh
fi

# common alias file
source $HOME/.aliases

# zsh-only alias
alias history='history -E'

# alias git commands to a bareword if we're in a git repo
# use `command diff` if you want the actual `diff` command in a git repo
function com diff log () {
  if git rev-parse --is-inside-work-tree &> /dev/null
  then
    git $0 "$@"
  else
    command $0 "$@"
  fi
}

path+=("$HOME/bin")
export PATH

# autocomplete, keep this at the end
source $HOME/.zcomp
