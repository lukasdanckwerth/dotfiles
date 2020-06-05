#!/bin/bash
set -u

# url of git repository to clone
REPO_URL=https://github.com/lukasdanckwerth/dotfiles.git

# allow usage of aliases
shopt -s expand_aliases

# create an alias to use git with environment variables
alias h='env GIT_WORK_TREE=$HOME GIT_DIR=$HOME/.files.git'

# initialize git project if not already existing
if [[ ! -d $HOME/.files.git ]] ; then
   h git init
   h git remote add origin "${REPO_URL}"
else
   echo "repository already existing. skipping initialization"
fi

# receive latest updates
h git fetch

# checkout master (in order the repository is not on master branch)
h git checkout master

# exit gracefully
exit 0
