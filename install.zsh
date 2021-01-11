# https://github.com/carloferrer/zhorts

source ./constants.zsh

# Print empty line for aesthetics
echo ""

# Check if install.zsh exists at current path
if [ ! -f ./install.zsh ]
then
    echo "Couldn't find an install.zsh file at current path.\nNavigate to where the zhorts repo is cloned before installing!"

# Check if install.zsh at current path is correct
elif ! grep -q $REPO_REMOTE $REPO_LOCAL_INSTALL
then
    echo "Found an install.zsh file, but not the right one.\nNavigate to where the zhorts repo is cloned before installing!"

# Check if zhorts is already installed
elif grep -q $SRC_LOCAL_INDEX $ZSH
then
    echo "Zhorts is already installed!"

# Install zhorts
else
    # Prepend source to ~/.zshrc
    echo -e "# $REPO_REMOTE\n$SRC_LOCAL_INDEX\n\n$(cat $ZSH)" > $ZSH
    echo "Source path to zhorts added!"

    # Add ZHORTS absolute path to index.zsh
    echo -e "# Path to this clone added as part of installation\n$DEFINE_REPO_LOCAL_PATH\n\n$(cat $REPO_LOCAL_INDEX)" > $REPO_LOCAL_INDEX

    # Apply zhorts aliases etc.
    source ./index.zsh

    echo "Zhorts installed!"
fi
