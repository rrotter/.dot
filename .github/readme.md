.dot - it's dotfiles!
=====================

usage
-----
```
git clone --bare https://github.com/rrotter/.dot.git $HOME/.dot
alias dot="/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME"
dot checkout
```
Then continue working in a new terminal window so .zshrc is sourced.

to do
-----
- add bash/linux support, initial commit for macos/zsh only

credits/references
-------
- <https://www.atlassian.com/git/tutorials/dotfiles>
