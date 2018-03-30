# https://github.com/sindresorhus/iterm2-snazzy
open $(dirname $0)/Snazzy.itermcolors # Preference -> Profiles -> Color -> Color Presets... -> Snazzy

defaults write com.googlecode.iterm2 OpenTmuxWindowsIn -int 2
defaults write com.googlecode.iterm2 StretchTabsToFillBar -bool true
defaults write com.googlecode.iterm2 DimInactiveSplitPanes -bool false
