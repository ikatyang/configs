#!/bin/bash

set -x # show commands
cd "$(dirname "$0")" # set cwd to dirname of this script

# ==============================================================================

# show hidden files
defaults write com.apple.finder AppleShowAllFiles true
killall Finder

# install fonts
cp ./fonts/* ~/Library/Fonts

# install [Brew](https://brew.sh/) (package manager for macOS)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
