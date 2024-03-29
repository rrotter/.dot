export LANG="en_US.UTF-8"
export LC_CTYPE=$LANG

if [[ -f /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export HOMEBREW_NO_ENV_HINTS=true
fi

# put ~/go somewhere we don't have to look at it
export GOPATH="$HOME/.local/go"

# never see nano/pico again!
export EDITOR=/usr/bin/vim

# pager
if type bat &>/dev/null; then
  export PAGER=bat
  export MANPAGER='less -sR'
  export BAT_STYLE='grid,numbers'
fi
