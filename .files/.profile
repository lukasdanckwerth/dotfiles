# ===------------------------------------------------------------------------===
#
# Author: Lukas Danckwerth
# ===------------------------------------------------------------------------===

# Always list directory contents upon 'cd'
cd() {
   builtin cd "$@"
   clear
   ls -la
}

[ -d "$HOME/.gems" ] && export GEM_HOME="$HOME/.gems"

[ -f "${HOME}/.DS_Store" ] && rm -rf "${HOME}/.DS_Store"
