#!/usr/bin/env bash

cd $(dirname $0)

brew install lsd
echo "source $PWD/config.sh" >> ~/.zshrc
