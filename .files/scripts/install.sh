#!/bin/bash
set -u

# url of git repository to clone
REPO_URL=https://github.com/lukasdanckwerth/dotfiles.git

# allow usage of aliases
shopt -s expand_aliases

# create an alias to use git with environment variables
alias h='env GIT_WORK_TREE=$HOME GIT_DIR=$HOME/.files.git'

# create a new empty repository
h git init

# set the repository URL
h git remote add origin "${REPO_URL}"

# receive latest updates
h git fetch 

# checkout master (in order the repository is not on master branch)
h git checkout master

# hide README.md on Mac
if foobar_loc="$(type -p "chflags")" ; then
   while true; do
      read -p "Hide the README.md file in Finder?" yn
      case $yn in
         [Yy]* ) chflags hidden "${HOME}/README.md"; break ;;
         [Nn]* ) break ;;
             * ) break ;;
      esac
   done
fi

# write update token
echo "$(date +%s)" > "${HOME}/.files/.files-update"

# exit gracefully
exit 0