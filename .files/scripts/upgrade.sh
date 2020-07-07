
# receive updates for all branches
git fetch

# receive current branch
branch="$(git rev-parse --abbrev-ref HEAD)"

# checkout master if it's not the current branch
[[ $branch == "master" ]] || git checkout master

# pull changes in master branch
GIT_RESULT=$(git pull)

# print result
echo "${GIT_RESULT}"

# store date of update
echo "$(date +%s)" > "${DOTFILES_LAST_PULL_PATH}"

if [[ ${GIT_RESULT} == "Already up to date." ]] ; then
   exit 0
else
   source "${HOME}/.files/.files.sh"
fi
