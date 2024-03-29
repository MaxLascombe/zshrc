PROMPT=$'\n'"%F{magenta}%B%n%b%f @ %F{cyan}%d%B%f%b%f "

cd_parent_unless_in_git_recursive() {
    if [ -d .git ]; then
        return
    fi
    cd ..
    cd_parent_unless_in_git_recursive
}

# Function that either opens a file in vim or cd's into a directory
v() { 
        if [ -d $1 ];
        then cd $1;
        else nvim -p "$@";
        fi
}

alias gc="git commit -m"
alias gp="git push"
alias gs="git status"
alias ls="ls -al"
alias vim="v"
alias sudo="sudo "
alias ...="cd_parent_unless_in_git_recursive"

eval $(thefuck --alias)

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
