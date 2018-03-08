set -o posix

export GOPATH=~
export EDITOR=vim
export HOMEBREW_NO_ANALYTICS=1
export PATH=./bin:~/bin:$PATH
export PS1="\w\\$ \[$(tput sgr0)\]"
export PYTHONDONTWRITEBYTECODE=1
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
export VISUAL=vim

goroot=$(go env GOROOT)
export CDPATH=:$HOME:$goroot/src:$GOPATH/src:$GOPATH/src/github.com:$GOPATH/src/golang.org:$GOPATH/src/bitbucket.org:

alias git='hub'
alias etc='hub --git-dir $HOME/etc/.git --work-tree=$HOME'
