#!/bin/sh

set -eo pipefail

# Install zsh
brew install zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed "s/env zsh//g")"

# Install spacehip theme
git clone https://github.com/denysdovhan/spaceship-prompt.git $ZSH/custom/themes/spaceship-prompt
ln -s $ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme $ZSH/custom/themes/spaceship.zsh-theme

# Copy zshrc
cp .zshrc ~/.
cp .gitconfig ~/.
cp .bash_prompt ~/.
cp .aliases ~/.

