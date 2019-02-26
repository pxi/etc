#!/bin/sh

# Make Go binaries available in PATH. They're usually in $HOME/go/bin.
[ -x "$(command -v go)" ] && PATH="$(go env GOPATH)/bin:$PATH"

export EDITOR=vim
export HOMEBREW_NO_ANALYTICS=1
export PATH="./bin:$HOME/bin:$PATH"
export PYTHONDONTWRITEBYTECODE=1
export NO_COLOR=true
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
export VISUAL=vim

[ "$BASH_VERSION" -a -z "$POSIXLY_CORRECT" ] && . "$HOME/.bashrc"
