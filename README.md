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
