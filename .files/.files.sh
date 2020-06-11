# ===------------------------------------------------------------------------===
#
# Author: Lukas Danckwerth
# Ensure running the `init` script
# ===------------------------------------------------------------------------===

# environment
export DOTFILES="${HOME}/.files"

# Load the environments file.
source "${DOTFILES}/.environment"

# Load the initialization script.
source "${DOTFILES}/.init"

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
