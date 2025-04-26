#!/bin/bash

set -euo pipefail

# ======================================================================= system

# show hidden files
defaults write com.apple.finder AppleShowAllFiles 1

# ========================================================================= brew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

# ========================================================================== tap

brew tap ikatyang/configs https://github.com/ikatyang/configs

# ========================================================================= font

brew install --cask ikatyang-font-wen-quan-yi-zen-hei-mono-nerd-font

# ========================================================================== git

brew install ikatyang-git-editor-code
brew install ikatyang-git-delta
brew install ikatyang-git-user-ikatyang

echo '[include] path = "~/Library/Developer/Homebrew-ikatyang-configs/.gitconfig"' >> ~/.gitconfig

# ========================================================================== zsh

brew install ikatyang-oh-my-zsh
brew install ikatyang-pure
brew install ikatyang-zsh-autosuggestions
brew install ikatyang-zsh-lang
brew install ikatyang-zsh-syntax-highlighting

echo 'source "$HOME/Library/Developer/Homebrew-ikatyang-configs/.zshrc"' >> ~/.zshrc

# ===================================================================== terminal

brew install ikatyang-terminal-one-dark-pro
open "/opt/homebrew/opt/ikatyang-terminal-one-dark-pro/one-dark-pro.terminal"
defaults write com.apple.Terminal "Default Window Settings" -string "one-dark-pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "one-dark-pro"

# ====================================================================== utility

brew install ikatyang-bat-cat
brew install ikatyang-colima-init
brew install ikatyang-gh-code
brew install ikatyang-lsd-ls
brew install ikatyang-nodenv

brew install docker
brew install docker-credential-helper
brew install pnpm
brew install tig
brew install tldr
brew install yarn

# ========================================================================== app

brew install --cask eul
brew install --cask iina
brew install --cask kap
brew install --cask maccy
brew install --cask rectangle
brew install --cask visual-studio-code

# ================================================================ Mac App Store

brew install mas

mas install 409203825 # Numbers https://apps.apple.com/app/id409203825
mas install 409183694 # Keynote https://apps.apple.com/app/id409183694
mas install 409201541 # Pages https://apps.apple.com/app/id409201541
mas install 497799835 # Xcode https://apps.apple.com/app/id497799835
mas install 1018301773 # AdBlock Pro https://apps.apple.com/app/id1018301773
mas install 1102004240 # iHosts https://apps.apple.com/app/id1102004240
mas install 1544743900 # Hush Nag Blocker https://apps.apple.com/app/id1544743900
