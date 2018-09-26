#!/bin/bash

set -o posix

# I prefer a simpler prompt.
PS1="\w\\$ \[$(tput sgr0)\]"
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	# Add hostname if connected to this machine via ssh.
	PS1="\h:$PS1"
fi

# Set a decent CDPATH for fast directory switching. The empty leading
# component disables echoing when changing to adjacent directories.
[ -x "$(command -v go)" ] && CDPATH=:$(go env GOROOT)/src

# Run chenv if it is installed whenever changing directories.
if [ -x "$(command -v chenv)" ]; then
	_chenv() {
		builtin "$@" || return $?
		builtin eval "$(chenv "$OLDPWD" "$PWD")"
	}

	cd() { _chenv cd "$@"; }
	popd() { _chenv popd "$@"; }
	pushd() { _chenv pushd "$@"; }
fi
