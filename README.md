# .zshrc

## Setup

```
cd ~
git clone git@github.com:MaxLascombe/zshrc.git
echo "source zshrc/.zshrc" > .zshrc
```

## Custom commands

- `cd_parent_unless_in_git`: Cd into parent directory unless there is a `.git` directory in current directory
- `ls`: Aliased to `ls -al`, which gives more info on the contents of the directory and shows hidden dot files as well
- `v`: Given a file, it opens it using `nvim -p` (-p opens multiple files in separate tabs). Given a directory, opens it using `cd`
- `vim`: Aliased to `v`
- `...`: Aliased to `cd_parent_unless_in_git`
