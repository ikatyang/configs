#!/bin/bash

set -euo pipefail

# ======================================================================= system

# TODO: Apple ID -> Media & Purchases -> Use Touch ID for Purchases

# TODO: Apple ID -> Media & Purchases -> Free Downloads: [x] Never require

# Desktop & Dock -> Dock -> Minimize windows using [Scale effect]
defaults write com.apple.dock mineffect scale

# Desktop & Dock -> Dock -> [x] Automatically hide and show the Dock
defaults write com.apple.dock autohide 1

# Desktop & Dock -> Dock -> [ ] Show recent application in Dock
defaults write com.apple.dock show-recents 0

# Desktop & Dock -> Menu Bar -> Automatically hide and show the menu bar [Never]
defaults write NSGlobalDomain AppleMenuBarVisibleInFullscreen 1

# Desktop & Dock -> Windows & Apps -> [x] Stage Manager
defaults write com.apple.WindowManager GloballyEnabled 1

# Desktop & Dock -> Mission Control -> [ ] Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces 0

# Accessibility -> Pointer Control -> Trackpad Options -> [x] Use trackpad for dragging -> Dragging style [Three Finger Drag]
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag 1

# Lock Screen -> Require password after screen saver begins or display is turned off [Immediately]
sysadminctl -screenLock immediate -password -
# Ref: https://www.kolide.com/blog/how-kolide-built-its-macos-screenlock-check

# General -> Software Update -> Automatic updates -> [x] Install application updates from the App Store
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate 1

# Control Center -> Bluetooth [Show in Menu Bar]
defaults write com.apple.controlcenter "NSStatusItem Visible Bluetooth" 1

# Control Center -> Clock options -> [x] Display the time with seconds
defaults write com.apple.menuextra.clock ShowSeconds 1

# Keyboard -> Text Input -> Input Sources -> [ ] Correct spelling automatically
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled 0

# Keyboard -> Text Input -> Input Sources -> [ ] Capitalize words automatically
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled 0

# Keyboard -> Text Input -> Input Sources -> [ ] Add period with double-space
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled 0

# Keyboard -> Text Input -> Input Sources -> [ ] Use smart quotes and dashes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled 0
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled 0

# Keyboard -> Keyboard Shortcuts -> Screenshots -> [x] Copy Picture of selected area to the clipboard: [⌃⌥A]
defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 31 "{ enabled = 1; value = { type = standard; parameters = ( 97, 0, 262144 ); }; }"
# Ref: https://web.archive.org/web/20141112224103/http://hintsforums.macworld.com/showthread.php?t=114785

# Trackpad -> Point & Click -> Look up & data detectors [Tap with Three Fingers]
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture 2

# Trackpad -> Point & Click -> [x] Tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking 1

# Trackpad -> More Gestures -> App Exposé [Swipe Down with Four Fingers]
defaults write com.apple.dock showAppExposeGestureEnabled 1

# TODO: Dictionary
# [x] Wikipedia
# [x] Apple Dictionary
# [x] Chinese, Simplified-English
# [x] Chinese, Traditional-English
# [x] Japanese-English

# Finder -> View -> [x] Show Path Bar
defaults write com.apple.finder ShowPathbar 1

# Finder -> View -> [x] Show Status Bar
defaults write com.apple.finder ShowStatusBar 1

# Finder -> Settings -> General -> New Finder windows show: [Documents]
defaults write com.apple.finder NewWindowTarget PfDo
defaults write com.apple.finder NewWindowTargetPath "file://$HOME/Documents/"

# Finder -> Settings -> Sidebar
open ~ # ensure favorites are initalized
curl -fsSL https://raw.githubusercontent.com/ikatyang/configs/master/scripts/setup-finder-favorite-items.swift | swift -

# Finder -> Settings -> Advanced -> [x] Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions 1

# Finder -> Settings -> Advanced -> Keep folders on top: [x] In windows when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst 1

# Finder -> Settings -> Advanced -> When performing a search: [Search the Current Folder]
defaults write com.apple.finder FXDefaultSearchScope SCcf

# show hidden files
defaults write com.apple.finder AppleShowAllFiles 1

# Safari -> View -> [x] Show Favorites Bar
defaults write com.apple.Safari ShowFavoritesBar-v2 1

# Safari -> View -> [x] Show Status Bar
defaults write com.apple.Safari ShowOverlayStatusBar 1

# Safari -> Settings -> General -> Remove history items: [Manually]
defaults write com.apple.Safari HistoryAgeInDaysLimit 365000

# Safari -> Settings -> General -> Remove download list items: [Manually]
defaults write com.apple.Safari DownloadsClearingPolicy 0

# Safari -> Settings -> General -> [ ] Open "safe" files after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads 0

# Safari -> Settings -> Advanced -> Smart Search Field: [x] Show full website address
defaults write com.apple.Safari ShowFullURLInSmartSearchField 1

# Safari -> Settings -> Advanced -> Default encoding: [Unicode (UTF-8)]
defaults write com.apple.Safari WebKitDefaultTextEncodingName utf-8
defaults write com.apple.Safari WebKitPreferences.defaultTextEncodingName utf-8

# Safari -> Settings -> Advanced -> [x] Show Develop menu in menu bar
defaults write com.apple.Safari IncludeDevelopMenu 1
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey 1
defaults write com.apple.Safari WebKitPreferences.developerExtrasEnabled 1
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu 1

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
