# never see nano/pico again!
# _not in .zshenv because that causes zsh to screw up keybindings_
export EDITOR=/usr/bin/vim

# history
HISTSIZE=2000000
SAVEHIST=2000000
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS

# keybindings
bindkey \^U backward-kill-line

# asdf initialization
if type brew &>/dev/null; then
  source $(brew --prefix asdf)/libexec/asdf.sh
fi

# common alias file
source $HOME/.aliases

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
