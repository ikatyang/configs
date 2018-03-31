#!/bin/bash

read -p "Are you logged in to the Mac App Store [y/n]? " -n 1 -r
echo # move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  echo "Please login to the Mac App Store since we need to install apps from there."
  exit 1
fi

# ==============================================================================

MESSAGES=()

function add_message {
  MESSAGES+=("[$APP_NAME] $1")
}

function show_messages {
  for (( i=0; i<${#MESSAGES[@]}; i++ )); do
    echo ${MESSAGES[$i]}
  done
}

function apply_config {
  local APP_NAME
  local APP_DIRNAME
  APP_NAME="$1"
  APP_DIRNAME="$PWD/apps/$APP_NAME"
  source "./apps/$1/config.sh"
}

# ==============================================================================

set -x # show commands
cd "$(dirname "$0")" # set cwd to dirname of this script

git clone https://github.com/ikatyang/configs ~/Documents/Github/ikatyang/configs

# ==============================================================================

# show hidden files
defaults write com.apple.finder AppleShowAllFiles true
killall Finder

# install fonts
cp ./fonts/* ~/Library/Fonts

# install [Brew](https://brew.sh/) The missing package manager for macOS
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install [mas-cli](https://github.com/mas-cli/mas) A simple command line interface for the Mac App Store
brew install mas

# ===================================================================== built-in
apply_config git
apply_config zsh
# ========================================================================= brew
brew install nvm && apply_config nvm # nvm https://github.com/creationix/nvm
brew install tmux && apply_config tmux # tmux https://tmux.github.io/
brew install yarn # Yarn https://yarnpkg.com/en/
# ==================================================================== brew cask
brew cask install iterm2 && apply_config iterm2 # iTerm2 https://www.iterm2.com/
brew cask install 5kplayer # 5KPlayer https://www.5kplayer.com/
brew cask install caprine # Caprine https://sindresorhus.com/caprine/
brew cask install cheatsheet # CheatSheet https://www.cheatsheetapp.com/CheatSheet/
brew cask install clipy # Clipy https://clipy-app.com/
brew cask install fanny # Fanny http://fannywidget.com/
brew cask install google-backup-and-sync # Google Backup and Sync https://www.google.com/drive/download/
brew cask install google-chrome # Google Chrome https://www.google.com/chrome/
brew cask install kap # Kap https://getkap.co/
brew cask install iina # IINA https://lhc70000.github.io/iina/
brew cask install spectacle && apply_config spectacle # Spectacle https://www.spectacleapp.com/
brew cask install teamviewer # TeamViewer https://www.teamviewer.com
brew cask install visual-studio-code && apply_config vscode # VSCode https://code.visualstudio.com/
brew cask install yujitach-menumeters # MenuMeters https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/
# ================================================================ Mac App Store
mas install 497799835 # Xcode https://itunes.apple.com/app/id497799835
# ==============================================================================
show_messages
