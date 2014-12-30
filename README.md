#Installation
Installing Apps
```
https://www.google.com/chrome?brand=CHMO#eula
http://git-scm.com/download/mac
https://www.virtualbox.org/wiki/Downloads
http://www.vagrantup.com/downloads.html
```

Installing zsh
```
curl -L http://install.ohmyz.sh | sh
```

Installing vim plugins & other backup files
```
git clone --recursive https://github.com/genevensis/vim.git ~/.vim/
```

See hidden files/folders in Finder
```
defaults write com.apple.finder AppleShowAllFiles YES
```

#Symlinks
```
ln -s ~/.vim/.vimrc ~/.vimrc
```

#Updating bundles
```
git submodule update --recursive
```
