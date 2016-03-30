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

brew install \
tmux \
tree \
ag \
mackup \
gpg \
ssh-copy-id \
colordiff \
diff-so-fancy

brew tap homebrew/versions


