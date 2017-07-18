# vscode

require font: `WenQuanYi Mono for Powerline`
- install with [zsh configs](../others/zsh.md)
- install manually: [WenQuanYi-Mono-for-Powerline.ttf](https://github.com/ikatyang/zsh-theme/raw/master/fonts/WenQuanYi-Mono-for-Powerline.ttf)

## Quick Setup

```sh
# retain git repository for version control
git clone https://github.com/ikatyang/configs.git ~/Documents/Github/configs

# link configs
ln -sf ~/Documents/Github/configs/vscode/locale.json ~/Library/Application\ Support/Code/User
ln -sf ~/Documents/Github/configs/vscode/settings.json ~/Library/Application\ Support/Code/User
ln -sf ~/Documents/Github/configs/vscode/keybindings.json ~/Library/Application\ Support/Code/User

# install extensions
code --install-extension sgtsquiggs.vscode-active-file-status
code --install-extension EditorConfig.EditorConfig
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension eamodio.gitlens
code --install-extension PKief.markdown-checkbox
code --install-extension PKief.material-icon-theme
code --install-extension zhuangtongfa.Material-theme
code --install-extension christian-kohler.path-intellisense
code --install-extension richie5um2.vscode-sort-json
code --install-extension Tyriar.sort-lines
code --install-extension eg2.tslint
code --install-extension rbbit.typescript-hero
code --install-extension qinjia.view-in-browser
```

## Manual Setup

**Note**: ⌘P to open vscode cli

## Settings

- [locale.json](./locale.json)
  - display language
  - command: `> Configure Language`

- [settings.json](./settings.json)
  - settings
  - command: `> Preferences: Open User Settings`

## Extensions

- [Active File Status](https://marketplace.visualstudio.com/items?itemName=sgtsquiggs.vscode-active-file-status)
  - command: `ext install vscode-active-file-status`

- [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
  - .editorconfig
  - command: `ext install EditorConfig`

- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - .eslintrc
  - command: `ext install vscode-eslint`

- [Git History (git log)](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
  - command: `ext install githistory`

- [Git Lens — git blame annotations, code lens, and more](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  - command: `ext install gitlens`

- [Markdown Checkbox](https://marketplace.visualstudio.com/items?itemName=PKief.markdown-checkbox)
  - command: `ext install markdown-checkbox`

- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
  - command: `ext install material-icon-theme`

- [OneDark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)
  - command: `ext install Material-theme`

- [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
  - command: `ext install path-intellisense`

- [Sort JSON objects](https://marketplace.visualstudio.com/items?itemName=richie5um2.vscode-sort-json)
  - command: `ext install vscode-sort-json`

- [Sort lines](https://marketplace.visualstudio.com/items?itemName=Tyriar.sort-lines)
  - command: `ext install sort-lines`

- [TSLint](https://marketplace.visualstudio.com/items?itemName=eg2.tslint)
  - tslint.json
  - command: `ext install tslint`

- [TypeScript Hero](https://marketplace.visualstudio.com/items?itemName=rbbit.typescript-hero)
  - command: `ext install typescript-hero`

- [View In Browser](https://marketplace.visualstudio.com/items?itemName=qinjia.view-in-browser)
  - command: `ext install view-in-browser`
