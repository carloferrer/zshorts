# Requires jq
alias jdp="jq .dependencies package.json"
alias jsp="jq .scripts package.json"

alias c="cd ~/Code"

# Requires bun
alias brd="bun run dev"
alias brt="bun run test"

# Source local work aliases if file exists
if [[ -f "${0:A:h}/work.local.zsh" ]]; then
  source "${0:A:h}/work.local.zsh"
fi