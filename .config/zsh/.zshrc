# never see nano/pico again!
# _not in .zshenv because that causes zsh to screw up keybindings_
export EDITOR=/usr/bin/vim

# history
HISTSIZE=2000000
SAVEHIST=2000000
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS

# clear all zsh/os default aliases
unalias -a
# colemak asdf
alias arst=asdf
# shortening
alias k=kubectl
alias kk=k9s
alias tf=terraform
alias be="bundle exec"
# Monday is the first day of the week.
if [[ -a /opt/homebrew/opt/util-linux/bin/cal ]]; then
  alias cal="/opt/homebrew/opt/util-linux/bin/cal -m"
fi
# manage dotfiles
alias dot="/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME"

# alias git commands to a bareword if we're in a git repo
# - note `diff` and `log` actually collide,
#     use `command diff` if you want the actual `diff` command in a git repo
# - this totally breaks tab completion, maybe we can fix that by using something that
#     emulates fish's `abbr`?
function add push pull branch br status st remote commit fixup checkout co ci diff log lo () {
    if git rev-parse --is-inside-work-tree &> /dev/null
    then
        git $0 "$@"
    else
        command $0 "$@"
    fi
}

if type brew &>/dev/null
then
  # brew autocomplete libs
  fpath+=$(brew --prefix)/share/zsh/site-functions

  # asdf initialization
  . $(brew --prefix asdf)/libexec/asdf.sh
fi

path+=('~/bin')
export PATH

# still needed?
#export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# zsh autocomplete boilerplate, keep this at the end
autoload -Uz compinit
compinit
