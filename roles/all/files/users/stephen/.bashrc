### Show git branch in terminal
### ---------------------------

function gitBranch() {
    GIT_BRANCH="$(git branch 2>/dev/null | grep '^*' | colrm 1 2)"
    
    if [ -n "$GIT_BRANCH" ]; then
        echo "($GIT_BRANCH)"
    fi
}

PS1='\[\e[0;1;38;5;70m\]\u:\[\e[m\] \[\e[0;1;38;5;32m\]\w\[\e[m\] \[\e[0;1;38;5;167m\]$(gitBranch)\[\e[m\] \[\e[0m\]\$\[\e[m\] \[\e0'
