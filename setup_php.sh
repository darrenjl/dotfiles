#!/bin/sh

set -eo pipefail

# Install prerequisites
brew install automake autoconf curl pcre bison re2c mhash libtool icu4c gettext jpeg openssl libxml2 mcrypt gmp libevent
brew link icu4c
brew link --force openssl
brew link --force libxml2

# Install phpbrew
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew

# Move phpbrew to somewhere can be found by your $PATH
sudo mv phpbrew /usr/local/bin/phpbrew

# Init phpbrew
phpbrew init
echo '[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc' >> ~/.zshrc
source ~/.zshrc
phpbrew lookup-prefix homebrew
brew install readline openssl lcov gd libedit libxml2 libmcrypt

# Install php
export PHP_VERSION=7.0.27
phpbrew install ${PHP_VERSION} +default +curl +mysql +mbstring +iconv +soap +sockets +xml +exif +zip +opcache +openssl +gd=shared +opcache +pcntl

# Switch your default php to php-${PHP_VERSION}:
phpbrew switch php-${PHP_VERSION}

# Install xdebug
pecl install xdebug

# Install composer
brew install composer



