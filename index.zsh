# Path to this clone added as part of installation
REPO_LOCAL_PATH="/Users/cferrer/workspace/zhorts"

# REPO_LOCAL_PATH constant defined as part of installation
source $REPO_LOCAL_PATH/constants.zsh

# Apply zhorts aliases etc.
for zhort in $REPO_LOCAL_PATH/zhorts/*.zsh
do
  source $zhort
done
