# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit -m'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gst='git status'
alias gai='git add --interactive'
alias gcam='git commit --amend -C HEAD'
alias gti="echo 'vroom vroom';git"
