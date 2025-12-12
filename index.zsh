# Path to this clone added as part of installation
REPO_LOCAL_PATH=$HOME/Config/zshorts

# Source constants if file exists
if [[ -f "${0:A:h}/constants.zsh" ]]; then
  source "${0:A:h}/constants.zsh"
fi

# Apply zshorts aliases etc.
for zshort in ${0:A:h}/zshorts/*.zsh
do
  if [[ -f "$zshort" ]]; then
    source "$zshort"
  fi
done
