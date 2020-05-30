#!/bin/bash

read -p "Are you logged in to the Mac App Store [y/n]? " -n 1 -r
echo # move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  echo "Please login to the Mac App Store since we need to install apps from there."
  exit 1
fi

# ==============================================================================

MESSAGES=()
SHELL_RC="$HOME/.zshrc"

function add_message {
  MESSAGES+=("[$APP_NAME] $1")
}

function show_messages {
  for (( i=0; i<${#MESSAGES[@]}; i++ )); do
    echo ${MESSAGES[$i]}
  done
}

function setup_app {
  local APP_NAME
  APP_NAME="$1"

  local APP_DIRNAME
  APP_DIRNAME="$PWD/apps/$APP_NAME"

  source "$APP_DIRNAME/setup.sh"
}

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

# install Brew https://brew.sh/ The missing package manager for macOS
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install mas-cli https://github.com/mas-cli/mas A simple command line interface for the Mac App Store
brew install mas

# install Yarn https://yarnpkg.com/en/
brew install yarn

# setup custom scripts
echo "PATH=\$PATH:$PWD/scripts" >> $SHELL_RC

# ===================================================================== built-in
setup_app git
setup_app zsh
# ========================================================================= brew
brew install bat # bat https://github.com/sharkdp/bat
brew install catimg # Catimg https://github.com/posva/catimg
brew install gron # gron https://github.com/tomnomnom/gron
brew install lsd && setup_app lsd # lsd https://github.com/Peltoche/lsd
# brew install nvm && setup_app nvm # nvm https://github.com/creationix/nvm
brew install tmux && setup_app tmux # tmux https://tmux.github.io/
brew install youtube-dl # youtube-dl http://ytdl-org.github.io/youtube-dl/
# ==================================================================== brew cask
brew cask install alacritty && setup_app alacritty # Alacritty https://github.com/jwilm/alacritty
brew cask install appcleaner # AppCleaner https://freemacsoft.net/appcleaner/
# brew cask install clipy # Clipy https://clipy-app.com/
brew cask install docker # Docker https://www.docker.com/
brew cask install dozer # Dozer https://github.com/Mortennn/Dozer
brew cask install filezilla # FileZilla https://filezilla-project.org/
brew cask install google-chrome # Google Chrome https://www.google.com/chrome/
brew cask install iina # IINA https://lhc70000.github.io/iina/
brew cask install kap # Kap https://getkap.co/
brew cask install keka # Keka https://www.keka.io/
brew cask install keycastr # KeyCastr https://github.com/keycastr/keycastr
brew cask install rectangle # Rectangle https://rectangleapp.com/
brew cask install teamviewer # TeamViewer https://www.teamviewer.com
brew cask install visual-studio-code # VSCode https://code.visualstudio.com/
brew cask install menumeters # MenuMeters https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/
# ================================================================ Mac App Store
mas install 409203825 # Numbers https://itunes.apple.com/app/id409203825
mas install 409183694 # Keynote https://itunes.apple.com/app/id409183694
mas install 409201541 # Pages https://itunes.apple.com/app/id409201541
mas install 456362093 # MuteMyMic https://itunes.apple.com/app/id456362093
mas install 497799835 # Xcode https://itunes.apple.com/app/id497799835
mas install 539883307 # LINE https://itunes.apple.com/app/id539883307
mas install 865500966 # feedly https://itunes.apple.com/app/id865500966
mas install 946399090 # Telegram Lite https://itunes.apple.com/app/id946399090
mas install 1206020918 # Battery Indicator https://itunes.apple.com/app/id1206020918
mas install 1263070803 # Lungo https://itunes.apple.com/app/id1263070803
mas install 1295203466 # Microsoft Remote Desktop https://itunes.apple.com/app/id1295203466
mas install 1470584107 # Dato https://itunes.apple.com/app/id1470584107
mas install 1480068668 # Messenger https://itunes.apple.com/app/id1480068668
# ========================================================================= yarn
yarn global add emma-cli # Emma https://github.com/maticzav/emma-cli
yarn global add fkill-cli # FKILL https://github.com/sindresorhus/fkill-cli
yarn global add ipt # iPipeTo https://github.com/ruyadorno/ipt
# ======================================================================= custom
setup_app nvs # NVS https://github.com/jasongin/nvs
# ==============================================================================
show_messages
