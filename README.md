# .dotfiles

stored in a `bare` git repository (
[link](https://www.atlassian.com/git/tutorials/dotfiles)
)

```
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> .gitignore
git clone --bare git@github.com:cheddachedda/.dotfiles.git $HOME/.dotfiles
config checkout

# probably want to
config config --local status.showUntrackedFiles no
```

if there are errors due to existing files

```sh
mkdir -p .config-backup && \
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
  xargs -I{} mv {} .config-backup/{}
```
