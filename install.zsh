# https://github.com/carloferrer/zshorts

# Set script directory for use in constants.zsh
SCRIPT_DIR="${0:A:h}"

if [[ -f "${SCRIPT_DIR}/constants.zsh" ]]; then
  source "${SCRIPT_DIR}/constants.zsh"
fi

# Print empty line for aesthetics
echo ""

# Check if install.zsh exists at script path
if [ ! -f "${SCRIPT_DIR}/install.zsh" ]
then
    echo "Couldn't find an install.zsh file at script path.\nThis should not happen!"

# Check if install.zsh at script path is correct
elif ! grep -q $REPO_REMOTE $REPO_LOCAL_INSTALL
then
    echo "Found an install.zsh file, but not the right one.\nMake sure you're running the correct install.zsh!"

# Check if zshorts is already installed
elif grep -q $SRC_LOCAL_INDEX $ZSH
then
    echo "Zshorts is already installed!"

# Install zshorts
else
    # Prepend source to ~/.zshrc
    echo -e "# $REPO_REMOTE\n$SRC_LOCAL_INDEX\n\n$(cat $ZSH)" > $ZSH
    echo "Source path to zshorts added!"

    # Apply zshorts aliases etc.
    if [[ -f "${SCRIPT_DIR}/index.zsh" ]]; then
      source "${SCRIPT_DIR}/index.zsh"
    fi

    echo "Zshorts installed!"
fi
