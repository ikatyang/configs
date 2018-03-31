# https://github.com/sindresorhus/iterm2-snazzy
open "$APP_DIRNAME/Snazzy.itermcolors"
add_message("Preference -> Profiles -> Color -> Color Presets... -> Snazzy")

defaults write com.googlecode.iterm2 OpenTmuxWindowsIn -int 2
defaults write com.googlecode.iterm2 StretchTabsToFillBar -bool true
defaults write com.googlecode.iterm2 DimInactiveSplitPanes -bool false
