#!/bin/sh

set -eo pipefail

brew install go

echo 'export GOROOT=/usr/local/opt/go/libexec' >> ~/.zshrc
echo 'export GOPATH=$HOME/dev' >> ~/.zshrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.zshrc

source ~/.zshrc

mkdir -p $GOPATH/{src,pkg,bin}

brew install dep protobuf jq






