#!/bin/bash
set -u

# check for existing `.bashrc` file
if [ -f "${HOME}/.bashrc" ] ; then
   echo "making backup of .bashrc..."
   mv --interactive "${HOME}/.bashrc" "${HOME}/.pre-dotfiles.bashrc"
fi

# check for existing `.zshrc` file
if [ -f "${HOME}/.zshrc" ] ; then
   echo "making backup of .zshrc..."
   mv --interactive "${HOME}/.zshrc" "${HOME}/.pre-dotfiles.zshrc"
fi

# check for existing `.profile` file
if [ -f "${HOME}/.profile" ] ; then
   echo "making backup of .profile..."
   mv --interactive "${HOME}/.profile" "${HOME}/.pre-dotfiles.profile"
fi

# check for existing `.bash_logout` file
if [ -f "${HOME}/.bash_logout" ] ; then
   echo "making backup of .bash_logout..."
   mv --interactive "${HOME}/.bash_logout" "${HOME}/.pre-dotfiles.bash_logout"
fi

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

# source the .files.sh file
if [ -f "${HOME}/.files/.files.sh" ] ; then
   source "${HOME}/.files/.files.sh"
else
   echo "Invalid .files installation."
   exit 1
fi

# exit gracefully
exit 0
