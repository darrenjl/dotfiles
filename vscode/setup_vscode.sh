#!/bin/sh

set -eo pipefail

# Install vscode
brew cask install visual-studio-code

# Install extensions
code --install-extension dbaeumer.vscode-eslint

# Copy user settings.json
mkdir -p ~/Library/Application\ Support/Code/User
cp settings.json ~/Library/Application\ Support/Code/User/settings.json
