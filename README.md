#Installation
Installing Thoughtbot boostrap
```
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
less mac
bash mac 2>&1 | tee ~/laptop.log
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

Activate Dark / Light Theme Toggle with CTRL-ALT-FN+T
```
defaults write -g _HIEnableThemeSwitchHotKey 1
```

#Symlinks
```
ln -s ~/.vim/vimrc ~/.vimrc
```

#Updating bundles
```
git submodule update --recursive
```
