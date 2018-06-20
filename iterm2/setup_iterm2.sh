#!/bin/sh

set -eo pipefail

# Install powerline fonts
# git clone https://github.com/powerline/fonts.git ~/fonts
# sh ~/fonts/install.sh
# rm -rf ~/fonts

# Install menlo powerline font
brew cask install font-menlo-for-powerline

# Preferences
cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
