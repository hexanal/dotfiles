source ~/.nvm/nvm.sh

# xprts
export ZSH="$HOME/.oh-my-zsh"
export PATH="./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
export EDITOR='vim'

ZSH_THEME="typewritten"

plugins=(git)

# aliazis
alias blog=/Users/fredmercy/Sites/fredmercy/blog/

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

alias l="ls"
alias la="ls -a"
alias hg="history | grep"
alias pwdc="pwd | pbcopy"
alias edithosts="sudo vim /etc/hosts"
alias editvimrc="mvim ~/.vimrc"
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"

alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

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

source $ZSH/oh-my-zsh.sh

SE16_SHELL="$HOME/.config/base16-shell/scripts/base16-eighties-dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
