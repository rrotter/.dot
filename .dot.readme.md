.dot - it's dotfiles!
=====================

usage
-----
```
git clone --bare https://github.com/rrotter/.dot.git $HOME/.dot
source .zshrc # or just open a new terminal session
dot checkout
```
`dot` is simply `alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'`, so from here out, it's used just like `git`

to do
-----
- add bash/linux support, initial commit for macos/zsh only

credits/references
-------
- <https://www.atlassian.com/git/tutorials/dotfiles>
