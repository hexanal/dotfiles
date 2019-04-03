# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias hg="history | grep"
alias pwdc="pwd | pbcopy"
alias logs="cd /var/log/apache2"
alias edithosts="sudo -H vim /etc/hosts"
alias editvimrc="mvim ~/.vimrc"
alias weather="curl -4 wttr.in/Sydney"

alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

function sendto() {
	echo Copying file "${2}" to /fredmercy/files/"${1}"
	echo Link will be: [ http://fredmercy.com/files/"${1}"/"${2}" ]

	scp "${2}" fredmercy.com:~/fredmercy/files/"${1}"
}

