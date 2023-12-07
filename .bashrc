export LANG="en_US.UTF-8"
export LC_CTYPE=$LANG

export EDITOR=/usr/bin/vim

# macOS: stop yelling about bash
export BASH_SILENCE_DEPRECATION_WARNING=1

HISTSIZE=100000
HISTFILESIZE=100000
HISTTIMEFORMAT="%-d.%m.%Y %H:%M  "

# common alias file
source $HOME/.aliases
