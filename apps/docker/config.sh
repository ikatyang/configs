brew cask install xquartz # XQuartz https://www.xquartz.org/
defaults write org.macosforge.xquartz.X11 nolisten_tcp -bool false

echo "source $APP_DIRNAME/.shellrc" >> $SHELL_RC
