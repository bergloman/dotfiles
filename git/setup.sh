#!/bin/bash

# global gitignore file
#ln -s `pwd`/.gitignore-global ~/.gitignore
#git config --global core.excludefile ~/.gitignore

# push only the current branch to the remote branch with the same name
#git config --global push.default current
# configure git to autocorrect your typos
#git config --global help.autocorrect 30
# cache credentials for 1 hour once entered
#git config --global credentail.helper 'cache --timeout=3600'

# set colors to git status
#git config --global color.status.added 'green'
#git config --global color.status.changed 'magenta'
#git config --global color.status.untracked 'white'

# trailing whitespaces
git config --global core.whitespace 'warn'
