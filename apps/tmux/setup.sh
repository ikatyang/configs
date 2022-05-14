#!/usr/bin/env bash

cd $(dirname $0)

brew install tmux
brew install reattach-to-user-namespace

git clone https://github.com/ikatyang/tmux-configs ~/Documents/Github/ikatyang/tmux-configs

ln -sf ~/Documents/Github/ikatyang/tmux-configs/.tmux.conf ~
ln -sf ~/Documents/Github/ikatyang/tmux-configs/.tmux.conf.local ~

echo "source $PWD/config.sh" >> ~/.zshrc
