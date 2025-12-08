# Path to this clone added as part of installation
REPO_LOCAL_PATH=$HOME/Config/zshorts

# REPO_LOCAL_PATH constant defined as part of installation
source $REPO_LOCAL_PATH/constants.zsh

# Apply zshorts aliases etc.
for zshort in $REPO_LOCAL_PATH/zshorts/*.zsh
do
  source $zshort
done
