# Prepend source to .zshrc
REPO_REMOTE="https://github.com/carloferrer/zhorts"
REPO_LOCAL_INDEX=$PWD/install.zsh
SRC_STR="source ${REPO_LOCAL_INDEX}"
ZSH=~/.zshrc

# Print empty line for aesthetics
echo ""

# Check if install.zsh exists at current path
if [ ! -f ./install.zsh ]
then
    echo "Couldn't find an install.zsh file at current path.\nNavigate to where the zhorts repo is cloned before installing!"

# Check if install.zsh at current path is correct
elif ! grep -q $REPO_REMOTE $REPO_LOCAL_INDEX
then
    echo "Found an install.zsh file, but not the right one.\nNavigate to where the zhorts repo is cloned before installing!"

# Check if zhorts is already installed
elif grep -q $SRC_STR $ZSH
then
    echo "Zhorts is already installed!"

# Install zhorts
else
    # Prepend source to ~/.zshrc
    echo -e "# $REPO_REMOTE\n$SRC_STR\n\n$(cat $ZSH)" > $ZSH
    echo "Source path to zhorts added!"

    # Apply zhorts aliases etc.
    for zhort in $PWD/*.zsh
    do
        if [ "${zhort}" != "${PWD}/install.zsh" ]
        then
            source $zhort
        fi
    done
    echo "Zhorts installed!"
fi

# Add alias to reload ~/.zshrc config
alias sz="source ~/.zshrc"
