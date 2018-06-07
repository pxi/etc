# etc

## Install
Paste these into your shell:
```
cd $HOME
git clone https://github.com/pxi/etc.git
echo '*' >>etc/.git/info/exclude
alias etc='git --git-dir $HOME/etc/.git --work-tree=$HOME'
etc reset --hard
```

## Usage
Adding new files must be done with `etc add -f file` because we ignore
everything by default.

### Managing vim packages
```
# Add package
etc submodule add -f https://github.com/user/package.git ~/.vim/pack/plugins/start/package
etc commit -m "Add package to vim"

# Update all packages
etc submodule foreach git pull origin master
etc commit -m "Update vim packages"
```
