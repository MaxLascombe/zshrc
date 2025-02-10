# .zshrc

## Setup

```
cd ~
git clone git@github.com:MaxLascombe/zshrc.git
echo "source ~/zshrc/.zshrc" > .zshrc
. ./.zshrc
```

## Custom commands

- `ci` : `yarn prettier --check . && yarn eslint . && yarn knip`
- `gac`: `git add -N . && git add -p && git commit -m`
- `gc`: `git commit -m`
- `gp`: `git push`
- `gpl`: `git pull`
- `gs`: `git status`
- `gsw`: `git switch`
- `ls`: Aliased to `ls -al`, which gives more info on the contents of the
  directory and shows hidden dot files as well
- `python`: `python3`
- `v`: Given a file, it opens it using `nvim -p` (-p opens multiple files in
  separate tabs). Given a directory, opens it using `cd`
- `vim`: Aliased to `v`
- `...`: Cd into git repo root directory
