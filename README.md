###Installation
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

Installing Homebrew
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Installing vim plugins & other backup files
```
git clone --recursive https://github.com/genevensis/vim.git ~/.vim/
```

See hidden files/folders in Finder
```
defaults write com.apple.finder AppleShowAllFiles YES
```

Disable Dashboard
```
defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock
defaults write com.apple.dock mcx-expose-disabled -bool true; killall Dock
```

###Symlinks
```
ln -s ~/.vim/.vimrc ~/.vimrc
```

###Submodules
```
git submodule update --recursive
git submodule add https://github.com/user/newmodule ~/.vim/bundle/newmodule
git rm --cached $submodulepath | git commit -m ""
```

###Sublime Text 3
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


###Windows
- [Cmder](http://bliker.github.io/cmder/)
- [gVimPortable] (http://portableapps.com/apps/development/gvim_portable)
```
Install gVimPortable on D:\
Open Cmder to D:\gVimPortable\Data\settings
mklink /D D:\gVimPortable\Data\settings\vimfiles D:\Dropbox\Private\Files\VimFiles
(git clone --recursive https://github.com/genevensis/vim.git vimfiles)
mklink /H _vimrc "vimfiles\.vimrc"
```
