#!/bin/bash

function get_desktop_env {
    if [ "$XDG_CURRENT_DESKTOP" = "" ]; then
        DSK=$(echo "$XDG_DATA_DIRS" | sed 's/.*\(xfce\|kde\|gnome\).*/\1/')
    else
        DSK=$XDG_CURRENT_DESKTOP
    fi

    DSK=`echo $DSK | awk '{print tolower($0)}'`  # to lower case
    echo "$DSK"
}

# open tmux with 256 colors
alias tmux="tmux -2"
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# use vim instead of VI
alias vi='vim'

# LS
# make ll human readable and show directories first
alias ls='ls --color=always'
# list non-hidden files
alias l='ls -lh --sort=extension --group-directories-first'
# list all files
alias ll='l -a --ignore={.,..}'
# list only hidden files
alias lh='l -a --ignore={[!.]*,.,..}'
# sort ll by file size
alias lls='ll -S'
# sort ll by modification time
alias llt='ll -t'

# TREE
alias tree='tree -Clf'

# GREP
# give color to grep and redirect it to egrep
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grep='egrep --colour=auto'

# FLAKE8 (python syntax checker)
alias flake8='flake8 --ignore H233,E501'

# Mac specific stuff
if [[ `uname -s` == "Darwin" ]]; then
    alias ctags="`brew --prefix`/bin/ctags"
fi

# if gnome tools are available
DESK_ENV=`get_desktop_env`
if [ "$DESK_ENV" = "x-cinnamon" ]; then
    alias open='gnome-open'
fi
