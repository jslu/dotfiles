#!/bin/bash

# install xcode command tool
xcode-select --install
# check
xcode-select -p

# install brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# check brew
brew doctor
brew update

# install cask
brew tap caskroom/cask
brew tap caskroom/versions

#brew cask install alfred
#brew cask alfred link
brew cask install google-chrome

brew cask install keka
brew cask install the-unarchiver
#brew cask install onepassword
#brew cask install flash
#brew cask install hipchat
brew cask install skype
brew cask install franz
brew cask install postman
#brew cask install slack
brew cask install iterm2
brew cask install marked
#brew cask install dropbox

#brew cask install virtualbox
#brew cask install virtualbox-extension-pack
#brew cask install vagrant
#brew cask install vagrant-manager
#brew cask install dockertoolbox
brew cask install docker-edge

brew cask install hacker-menu

brew cask install dash
brew cask install gitx
#brew cask install sourcetree
brew cask install java
brew cask install postgres
brew cask install postico
brew cask install mysqlworkbench
brew cask install intellij-idea-ce

#brew cask install caskroom-versions/sublime-text3
#brew cask install textexpander
#brew cask install appcleaner
#brew cask install clipmenu
brew cask install colorpicker
brew cask install colorpicker-developer
brew cask install cyberduck
brew cask install karabiner-elements
brew cask install mousepose
brew cask install xmind
brew cask install xquartz

brew cask install tunnelblick
brew cask install shadowsocksx

brew cask install vlc
brew cask install flip4mac
brew cask install duet

brew cask install moom
brew cask install bettertouchtool
brew cask install contexts
brew cask install timing
brew cask install istat-menus
brew cask install bartender

# need password
#brew cask install mamp
#brew cask install splashtop-personal
#brew cask install splashtop-streamer
brew cask install teamviewer

# install Fonts
brew tap caskroom/fonts
brew cask install font-source-code-pro
brew cask install font-fontawesome
brew cask install font-inconsolata-dz-for-powerline

# install QuickLook
# https://github.com/sindresorhus/quick-look-plugins
brew cask install betterzipql qlcolorcode qlmarkdown qlprettypatch qlstephen qlvideo quicklook-csv quicklook-json suspicious-package

# install Aerial (Apple TV screensavor)
brew cask install aerial

# GUI apps that currently have no cask
#Xcode
#Microsoft Office
#LINE
#Wunderlist
#WeChat
#Yahoo KeyKey (w/ liu3.cin under /Library/Input\ Methods/Yahoo!\ KeyKey.app/Contents/Resources/DataTables/Generic)
#  - liu3.cin: http://www.macuknow.com/sites/default/files/liu3.cin_.zip
#TinyTake
