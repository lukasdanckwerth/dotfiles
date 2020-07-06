# ===------------------------------------------------------------------------===
#
# Author: Lukas Danckwerth
# Ensure running the `init` script
# ===------------------------------------------------------------------------===

# environment
export DOTFILES="${HOME}/.files"

# Load the environments file.
source "${DOTFILES}/.environment"

# LOAD ALIASES
# ===------------------------------------------------------------------------===

function extend_aliases() {
   [ -f "$1" ] && source "$1"
}

extend_aliases "${DOTFILES}/.aliases"
extend_aliases "${HOME}/.zsh_aliases"
extend_aliases "${HOME}/.bash_aliases"


# EXTEND $PATH VAR
# ===------------------------------------------------------------------------===

function export_path() {
   [ -d "$1" ] && export PATH="$PATH:$1"
}

export_path "$DOTFILES/bin"
export_path "$HOME/bin"
export_path "$HOME/.bin"
export_path "$HOME/Developer/bin"
export_path "$HOME/.fastlane/bin"
export_path "$HOME/.gems/bin"
export_path "/usr/local/opt/ruby/bin"

# Load the profile file.
source "${DOTFILES}/.profile"

LAST_UPDATE_DATE=$(date -r "${DOTFILES_LAST_PULL_PATH}" +'%F %T')

echo ""
echo -e "\e[38;5;160m      ###### ## ##    ######  #####"
echo -e "\e[38;5;202m      ##        ##    ##  ## ##"
echo -e "\e[38;5;11m      ###### ## ##    ######  ####"
echo -e "\e[38;5;10m ###  ##     ## ##    ##         ##"
echo -e "\e[38;5;27m ###  ##     ## ##### ###### #####"
echo -e "\e[39m"
echo "$SHELL_NAME on $OS_NAME, v$(dotfiles version), $LAST_UPDATE_DATE"
echo ""



source "${DOTFILES}/scripts/check-for-upgrade.sh"
