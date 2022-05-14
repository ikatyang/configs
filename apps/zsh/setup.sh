#!/usr/bin/env bash

cd $(dirname $0)

# https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# https://github.com/sindresorhus/pure
brew install pure
sed -i '' -e 's/^ZSH_THEME=/ZSH_THEME="" # /' ~/.zshrc

# https://github.com/zsh-users/zsh-syntax-highlighting/
brew install zsh-syntax-highlighting

# https://github.com/zsh-users/zsh-autosuggestions
brew install zsh-autosuggestions

echo "source $PWD/config.sh" >> ~/.zshrc
