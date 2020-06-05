#!/bin/bash
set -u

alias h="env GIT_WORK_TREE=$HOME GIT_DIR=$HOME/.files.git"

h git init

h git remote add origin https://github.com/lukasdanckwerth/dotfiles.git

h git fetch

h git checkout master
