# history
HISTSIZE=2000000
SAVEHIST=2000000
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# keybindings
bindkey -e # emacs bindings
bindkey \^U backward-kill-line

# misc shell settings
setopt AUTO_CD
setopt NO_CASE_GLOB
setopt EXTENDED_GLOB

# asdf initialization
if type brew &>/dev/null; then
  local ASDF_PREFIX=$(brew --prefix asdf)
  if [[ -d $ASDF_PREFIX ]]; then
    source $(brew --prefix asdf)/libexec/asdf.sh
  fi
fi

# vcs_info: show git status in $PROMPT
autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' enable git

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red}●%f'
zstyle ':vcs_info:*' stagedstr '%F{blue}●%f'

zstyle ':vcs_info:git*' formats '%c%u%F{208}λ%f%b'
zstyle ':vcs_info:git*' actionformats '%F{red}%a%f %F{208}λ%f%b'

# set $PROMPT
PROMPT='%1~ %(1j.%F{blue}[%j]%f .)%(?.%F{black}.%(130?.%F{yellow}.%(146?.%F{blue}.%F{red})))%#%f '
RPROMPT='${vcs_info_msg_0_}'

# common alias file
source $HOME/.aliases

# zsh-only alias
alias history='history -t "%e.%-m.%Y %H:%M"'

# alias git commands to a bareword
# use real aliases for commands where we really need autocomplete
for cmd in add br branch co checkout ci commit show; do
  alias $cmd="git ${cmd}"
done
# use a shell function to alias git commands _only when in a git repo_
# use this solution to avoid colliding with other commands
# use `command diff` if you want the actual `diff` command when in a git repo
function com diff fixup lo log pull push remote st status () {
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
