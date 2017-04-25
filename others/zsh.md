# Zsh

require Node.js v6 or above

```sh
# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install my zsh theme (https://github.com/ikatyang/zsh-theme), retain git repository for version control
git clone https://github.com/ikatyang/zsh-theme.git ~/Documents/Github/zsh-theme
cp ~/Documents/Github/zsh-theme/fonts/WenQuanYi-Mono-for-Powerline.ttf /Library/Fonts/
ln -sf ~/Documents/Github/zsh-theme/ikatyang.zsh-theme ~/.oh-my-zsh/themes/
node ~/Documents/Github/zsh-theme/scripts/set-theme.js ikatyang
```

Terminal.app
- Font
  - WenQuanYi Mono for Powerline 12 pt
- Text
  - [x] Antialias text
