set -o posix

# I prefer a simpler prompt.
PS1="\w\\$ \[$(tput sgr0)\]"
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	# Add hostname if connected to this machine via ssh.
	PS1="\h:$PS1"
fi

# Make go binaries available in PATH.
[ -x "$(command -v go)" ] && PATH="$(go env GOPATH)/bin:$PATH"

# Add the local bin and global bin directories to PATH.
PATH="./bin:$HOME/bin:$PATH"

# Set a decent CDPATH for fast directory switching. The empty leading
# component disables echoing when changing to adjacent directories.
CDPATH=:$HOME
[ -x "$(command -v go)" ] && CDPATH=$CDPATH:$(go env GOROOT)/src

EDITOR=vim
VISUAL=vim

export HOMEBREW_NO_ANALYTICS=1
export PYTHONDONTWRITEBYTECODE=1
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

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
