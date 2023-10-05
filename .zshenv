export LANG="en_US.UTF-8"
export LC_CTYPE=$LANG

eval "$(/opt/homebrew/bin/brew shellenv)"

export ZDOTDIR="$HOME/.config/zsh"
export ASDF_GEM_DEFAULT_PACKAGES_FILE="$HOME/.config/default-gems"

# put ~/go somewhere we don't have to look at it
export GOPATH="$HOME/.local/go"
