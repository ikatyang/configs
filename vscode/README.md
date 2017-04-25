# vscode

require font: `WenQuanYi Mono for Powerline`
- install with [zsh configs](../others/zsh.md)
- install manually: [WenQuanYi-Mono-for-Powerline.ttf](https://github.com/ikatyang/zsh-theme/raw/master/fonts/WenQuanYi-Mono-for-Powerline.ttf)

## Quick Installation

```sh
# retain git repository for version control
git clone https://github.com/ikatyang/configs.git ~/Documents/Github/configs

# link configs
ln -sf ~/Documents/Github/configs/vscode/locale.json ~/Library/Application\ Support/Code/User
ln -sf ~/Documents/Github/configs/vscode/settings.json ~/Library/Application\ Support/Code/User

# install extensions
code --install-extension EditorConfig.EditorConfig
code --install-extension dbaeumer.vscode-eslint
code --install-extension eg2.tslint
code --install-extension richie5um2.vscode-sort-json
code --install-extension zhuangtongfa.Material-theme
code --install-extension file-icons.file-icons
```

## Manual Installation

**Note**: ⌘P to open vscode cli

## Settings

- [locale.json](./locale.json)
  - display language
  - command: `> Configure Language`

- [settings.json](./settings.json)
  - settings
  - command: `> Preferences: Open User Settings`

## Extensions

- [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
  - .editorconfig
  - command: `ext install EditorConfig`

- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - .eslintrc
  - command: `ext install vscode-eslint`

- [TSLint](https://marketplace.visualstudio.com/items?itemName=eg2.tslint)
  - tslint.json
  - command: `ext install tslint`

- [Sort JSON objects](https://marketplace.visualstudio.com/items?itemName=richie5um2.vscode-sort-json)
  - command: `ext install vscode-sort-json`

- [Material Theme](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)
  - command: `ext install Material-theme`

- [file-icons](https://marketplace.visualstudio.com/items?itemName=file-icons.file-icons)
  - command: `ext install file-icons`
