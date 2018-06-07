# etc

## Install
Paste these into your shell:
```
cd $HOME
git clone https://github.com/pxi/etc.git
./etc/install
ln -s .bashrc .bash_profile
```

## Usage

### Managing vim packages
```
# Add package
git submodule add -f https://github.com/user/package.git vim/pack/plugins/start/package
git commit -m "Add package to vim"

# Update all packages
git submodule foreach git pull origin master
git commit -m "Update vim packages"
```
