# package management
brew "asdf"
brew "xz" # required for python-build
brew "mas" # so we can install mas apps here!

# cli tools
#mas "Xcode", id: 497799835 # this triggers a reinstall, which takes forever
brew "watch"
brew "coreutils" # tac, etc
brew "wget"
brew "util-linux" # really just for `cal -m`
brew "jq"
tap "homebrew/aliases" # add `brew alias` command
brew "dos2unix"
brew "duti" # for setting mac file handlers

# aws
brew "awscli"

# kubernetes
brew "kubernetes-cli"
brew "k9s"
tap "int128/kubelogin"
brew "kubelogin"
brew "tanka"
brew "jsonnet-bundler"
brew "helm"

# terraform
brew "opentofu"

# vm
cask "utm"
brew "lima"

# dev
brew "gh"
brew "glab"
brew "glow"
cask "hex-fiend"
cask "iterm2"
cask "kitty"

# text editors
cask "textmate"
brew "helix"
cask "pulsar"

# desktop env
cask "1password"
cask "1password-cli"
cask "discord"
cask "firefox"
cask "rectangle" # window snap tool
cask "skim"
cask "slack"
cask "zoom"
mas "Deliveries", id: 290986013
mas "Numbers", id: 409203825
mas "Pages", id: 409201541
mas "Wipr", id: 1320666476

# misc tools
cask "kicad"
mas "Mactracker", id: 430255202

# dependencies
# these are listed explicitly so we can unlink the binaries
brew "docutils", link: false # for awscli
brew "python@3.11", link: false # for awscli
brew "openssl@3", link: false
