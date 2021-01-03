#!/bin/bash

read -e -p "Are you logged in to the Mac App Store [y/n]? "
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

# install Homebrew https://brew.sh/ The missing package manager for macOS
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export PATH=/opt/homebrew/bin:$PATH' >> $SHELL_RC # path for Homebrew (ARM)
PATH=/opt/homebrew/bin:$PATH

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
brew install fd # fd https://github.com/sharkdp/fd
brew install git-delta # delta https://github.com/dandavison/delta
brew install gron # gron https://github.com/tomnomnom/gron
brew install hexyl # hexyl https://github.com/sharkdp/hexyl
brew install lsd && setup_app lsd # lsd https://github.com/Peltoche/lsd
brew install tldr # tldr https://github.com/tldr-pages/tldr
brew install tig # tig https://github.com/jonas/tig
brew install tmux && setup_app tmux # tmux https://tmux.github.io/
brew install youtube-dl # youtube-dl http://ytdl-org.github.io/youtube-dl/
# ==================================================================== brew cask
brew install --cask alacritty && setup_app alacritty # Alacritty https://github.com/jwilm/alacritty
brew install --cask alt-tab # AltTab https://github.com/lwouis/alt-tab-macos
brew install --cask appcleaner # AppCleaner https://freemacsoft.net/appcleaner/
brew install --cask docker # Docker https://www.docker.com/
brew install --cask dozer # Dozer https://github.com/Mortennn/Dozer
brew install --cask eul # eul https://github.com/gao-sun/eul
brew install --cask firefox # Firefox https://www.mozilla.org/firefox/
brew install --cask google-chrome # Google Chrome https://www.google.com/chrome/
brew install --cask iina # IINA https://lhc70000.github.io/iina/
brew install --cask kap # Kap https://getkap.co/
brew install --cask keka # Keka https://www.keka.io/
brew install --cask keycastr # KeyCastr https://github.com/keycastr/keycastr
brew install --cask maccy # Maccy https://maccy.app
brew install --cask rectangle # Rectangle https://rectangleapp.com/
brew install --cask teamviewer # TeamViewer https://www.teamviewer.com
brew install --cask ueli # ueli https://github.com/oliverschwendener/ueli
brew install --cask visual-studio-code # VSCode https://code.visualstudio.com/
# ================================================================ Mac App Store
mas install 409203825 # Numbers https://itunes.apple.com/app/id409203825
mas install 409183694 # Keynote https://itunes.apple.com/app/id409183694
mas install 409201541 # Pages https://itunes.apple.com/app/id409201541
mas install 456362093 # MuteMyMic https://itunes.apple.com/app/id456362093
mas install 497799835 # Xcode https://itunes.apple.com/app/id497799835
mas install 539883307 # LINE https://itunes.apple.com/app/id539883307
mas install 946399090 # Telegram Lite https://itunes.apple.com/app/id946399090
mas install 1018301773 # AdBlock Pro https://itunes.apple.com/app/id1018301773
mas install 1206020918 # Battery Indicator https://itunes.apple.com/app/id1206020918
mas install 1263070803 # Lungo https://itunes.apple.com/app/id1263070803
mas install 1295203466 # Microsoft Remote Desktop https://itunes.apple.com/app/id1295203466
mas install 1470584107 # Dato https://itunes.apple.com/app/id1470584107
mas install 1480068668 # Messenger https://itunes.apple.com/app/id1480068668
mas install 1529448980 # Reeder 5 https://itunes.apple.com/app/id1529448980
# ========================================================================= yarn
yarn global add emma-cli # Emma https://github.com/maticzav/emma-cli
yarn global add fkill-cli # FKILL https://github.com/sindresorhus/fkill-cli
yarn global add ipt # iPipeTo https://github.com/ruyadorno/ipt
yarn global add terminal-image-cli # terminal-image https://github.com/sindresorhus/terminal-image-cli
# ======================================================================= custom
setup_app nvs # NVS https://github.com/jasongin/nvs
# ==============================================================================
show_messages
