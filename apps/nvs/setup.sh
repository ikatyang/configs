#!/usr/bin/env bash

cd $(dirname $0)

git clone https://github.com/jasongin/nvs ~/.nvs
echo "source $PWD/config.sh" >> ~/.zshrc
