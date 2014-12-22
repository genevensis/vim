Installation
------------
#Installing Thoughtbot boostrap
```
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
less mac
bash mac 2>&1 | tee ~/laptop.log
```

#Installing vim plugins & other backup files
```
git clone --recursive https://github.com/genevensis/vim.git ~/.vim/
```

#See hidden files/folders in Finder
```
defaults write com.apple.finder AppleShowAllFiles YES
```

Symlinks
--------
```
ln -s ~/.vim/vimrc ~/.vimrc
```

Updating bundles
----------------
```
git submodule update --recursive
```
