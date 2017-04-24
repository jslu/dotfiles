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
grc \
ssh-copy-id \
colordiff \
diff-so-fancy \
googler \
fzf

brew tap homebrew/versions


