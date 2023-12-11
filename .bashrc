export LANG="en_US.UTF-8"
export LC_CTYPE=$LANG

export EDITOR=/usr/bin/vim

# macOS: stop yelling about bash
export BASH_SILENCE_DEPRECATION_WARNING=1

# bash history settings
HISTCONTROL=erasedups
shopt -s histappend
HISTSIZE=100000
HISTFILESIZE=100000
HISTTIMEFORMAT="%e.%-m.%Y %H:%M  "

# bash completion
# requires `bash-completion` package
if [[ -r "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh" ]]; then
  source "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"
fi

# common alias file
source $HOME/.aliases
