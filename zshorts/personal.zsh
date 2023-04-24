alias a='alias | grep'

# Rails stuff
alias be='bundle exec'
alias bers='bundle exec rails s'
alias rspec='bundle exec rspec'

# Git stuff
alias g='git'
alias ga='git add'
alias gcam='git commit -am'
alias gcm='git checkout master'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias ggf='ggr --files-with-matches'
alias ggr='git grep'
alias ggra='git grep -A'
alias ggrb='git grep -B'
alias g2='git grep -B 2'
alias ggrc='git grep -C'
alias gl='git pull'
alias glo='git log -U0'
alias gp='git push'
alias gpsup='git push --set-upstream origin $(git_branch)'
alias gst='git status'

# Dangerous git stuff
alias gcan!='git commit -a --no-edit --amend'
alias gpf!='git push --force-with-lease'

alias l='ls -a'

# Handy git branch getter
git_branch() {
  echo "$(command git symbolic-ref --short -q HEAD)"
}

# Python stuff
alias pm='python manage.py'
alias seba='source env/bin/activate'
