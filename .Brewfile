# package management
brew "asdf"
brew "xz" # required for python-build
brew "mas" # so we can install mas apps here!
tap "homebrew/aliases" # add `brew alias` command

# cli tools
brew "bat"
brew "dos2unix"
brew "duti" # for setting mac file handlers
brew "fd"
brew "glow"
brew "jq"
brew "ripgrep"
brew "unar"
brew "watch"
brew "wget"

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
cask "openlens" unless Hardware::CPU.virtualized?

# terraform
brew "opentofu"

unless Hardware::CPU.virtualized?
  # vm
  brew "lima"
  cask "utm"
end

# dev
brew "cmake"
brew "gh"
brew "glab"
brew "ninja"
cask "hex-fiend"
cask "iterm2"
cask "kitty" unless Hardware::CPU.virtualized?

unless Hardware::CPU.virtualized?
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
end

# dependencies
# these are listed explicitly so we can unlink the binaries
brew "coreutils", link: false # for asdf
brew "docutils", link: false # for awscli
brew "glib", link: false # for lima/qemu
brew "libgit2", link: false # for bat
brew "libtool", link: false # for asdf
brew "python@3", link: false # for awscli
brew "openssl@3", link: false # everything
