PROMPT=$'\n'"%F{201}%B%n%b%f @ %F{123}%d%B%f%b%f "

cd_parent_unless_in_git_recursive() {
    if [ -d .git ]; then
        return
    fi
    builtin cd ..
    cd_parent_unless_in_git_recursive
}

# Function that either opens a file in vim or cd's into a directory
v() { 
        if [ -d $1 ];
        then builtin cd $1;
        else nvim -p "$@";
        fi
}

# If cd is called with no arguments, just run cd, otherwise run v
cd() {
    if [ $# -eq 0 ]; then
        builtin cd
    else
        v $1
    fi
}

alias ci="yarn eslint . && yarn build && (yarn prettier --check . || yarn prettier --write .) && yarn knip"
alias gac="git add -N . && git add -p && git commit -m"
alias gb="git branch"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gs="git status"
alias gsw="git switch"
alias ls="ls -al"
alias python="python3"
alias vim="v"
alias sudo="sudo "
alias ...="cd_parent_unless_in_git_recursive"

eval $(thefuck --alias)

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
