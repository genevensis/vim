#Installation
Installing Apps
- [Chrome](https://www.google.com/chrome?brand=CHMO#eula)
- [GitHub](http://git-scm.com/download/mac)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](http://www.vagrantup.com/downloads.html)
- [Dropbox](https://www.dropbox.com/downloading?src=inde)
- [LiveReload] (https://itunes.apple.com/us/app/livereload/id482898991?mt=12#)

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

#Sublime Text 3
- [Download](http://www.sublimetext.com/3)
- [Packages](https://packagecontrol.io/installation)
```
Packages to install (SHIFT-CMD-P): 
Soda Theme - ("theme": "Soda Dark.sublime-theme")
Emmet
AutoFileName
All Autocomplete
Bracket Highlighter
```
