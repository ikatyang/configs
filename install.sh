#!/bin/bash

set -euo pipefail

read -p "Are you logged in to the Mac App Store [y/n]? " REPLY
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  echo "Please login to the Mac App Store since we need to install apps from there."
  exit 1
fi

# ==============================================================================

set -x # show commands

git clone https://github.com/ikatyang/configs ~/Documents/GitHub/ikatyang/configs
cd ~/Documents/GitHub/ikatyang/configs

# ==============================================================================

# show hidden files
defaults write com.apple.finder AppleShowAllFiles true
killall Finder

# install fonts
cp ./fonts/* ~/Library/Fonts

# install Homebrew https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew analytics off

# install mas-cli https://github.com/mas-cli/mas
brew install mas

# setup custom scripts
echo "PATH=\$PATH:$PWD/scripts" >> ~/.zshrc

# ===================================================================== built-in
./apps/git/setup.sh
./apps/zsh/setup.sh
# ======================================================================= custom
./apps/nvs/setup.sh # NVS https://github.com/jasongin/nvs
./apps/lsd/setup.sh # lsd https://github.com/Peltoche/lsd
./apps/podman/setup.sh # podman https://podman.io/
./apps/tmux/setup.sh # tmux https://tmux.github.io/
# ========================================================================= brew
brew install fd # fd https://github.com/sharkdp/fd
brew install git-delta # delta https://github.com/dandavison/delta
brew install tldr # tldr https://github.com/tldr-pages/tldr
brew install tig # tig https://github.com/jonas/tig
brew install yarn # yarn https://yarnpkg.com
# ==================================================================== brew cask
brew install --cask eul # eul https://github.com/gao-sun/eul
brew install --cask iina # IINA https://lhc70000.github.io/iina/
brew install --cask kap # Kap https://getkap.co/
brew install --cask keka # Keka https://www.keka.io/
brew install --cask maccy # Maccy https://maccy.app
brew install --cask raycast # Raycast https://raycast.app/
brew install --cask rectangle # Rectangle https://rectangleapp.com/
brew install --cask visual-studio-code # VSCode https://code.visualstudio.com/
# ================================================================ Mac App Store
mas install 409203825 # Numbers https://apps.apple.com/app/id409203825
mas install 409183694 # Keynote https://apps.apple.com/app/id409183694
mas install 409201541 # Pages https://apps.apple.com/app/id409201541
mas install 497799835 # Xcode https://apps.apple.com/app/id497799835
mas install 1018301773 # AdBlock Pro https://apps.apple.com/app/id1018301773
mas install 1102004240 # iHosts https://apps.apple.com/app/id1102004240
mas install 1206020918 # Battery Indicator https://apps.apple.com/app/id1206020918
mas install 1263070803 # Lungo https://apps.apple.com/app/id1263070803
mas install 1470584107 # Dato https://apps.apple.com/app/id1470584107
mas install 1529448980 # Reeder 5 https://apps.apple.com/app/id1529448980
mas install 1544743900 # Hush Nag Blocker https://apps.apple.com/app/id1544743900
# ==============================================================================
