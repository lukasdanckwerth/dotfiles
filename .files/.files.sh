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

echo '''

      ###### ## ##    ######  #####
      ##        ##    ##  ## ##
      ###### ## ##    ######  #### 
 ###  ##     ## ##    ##         ##
 ###  ##     ## ##### ###### #####
'''

echo "          OS: $OS_NAME"
echo "       SHELL: $SHELL_NAME"
echo "     VERSION: $(dotfiles version)"
echo " LAST UPDATE: $LAST_UPDATE_DATE"
echo ""
echo ""


source "${DOTFILES}/scripts/check-for-upgrade.sh"
