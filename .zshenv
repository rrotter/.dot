export LANG="en_US.UTF-8"
export LC_CTYPE=$LANG

if [[ -f /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# put ~/go somewhere we don't have to look at it
export GOPATH="$HOME/.local/go"

# never see nano/pico again!
export EDITOR=/usr/bin/vim
