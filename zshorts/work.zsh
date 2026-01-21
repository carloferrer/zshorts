# Requires jq
alias jdp="jq .dependencies package.json"
alias jsp="jq .scripts package.json"

alias c="cd ~/Code"

# Requires bun
alias brd="bun run dev"
brt() { (cd client && bun run test "$@"); } # Run from hb1 root