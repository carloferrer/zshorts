# https://github.com/carloferrer/zshorts

if [[ -f "${0:A:h}/constants.zsh" ]]; then
  source "${0:A:h}/constants.zsh"
fi

# Print empty line for aesthetics
echo ""

# Check if install.zsh exists at current path
if [ ! -f ./install.zsh ]
then
    echo "Couldn't find an install.zsh file at current path.\nNavigate to where the zshorts repo is cloned before installing!"

# Check if install.zsh at current path is correct
elif ! grep -q $REPO_REMOTE $REPO_LOCAL_INSTALL
then
    echo "Found an install.zsh file, but not the right one.\nNavigate to where the zshorts repo is cloned before installing!"

# Check if zshorts is already installed
elif grep -q $SRC_LOCAL_INDEX $ZSH
then
    echo "Zshorts is already installed!"

# Install zshorts
else
    # Prepend source to ~/.zshrc
    echo -e "# $REPO_REMOTE\n$SRC_LOCAL_INDEX\n\n$(cat $ZSH)" > $ZSH
    echo "Source path to zshorts added!"

    # Add ZSHORTS absolute path to index.zsh
    echo -e "# Path to this clone added as part of installation\n$DEFINE_REPO_LOCAL_PATH\n\n$(cat $REPO_LOCAL_INDEX)" > $REPO_LOCAL_INDEX

    # Apply zshorts aliases etc.
    if [[ -f "${0:A:h}/index.zsh" ]]; then
      source "${0:A:h}/index.zsh"
    fi

    echo "Zshorts installed!"
fi
