# vscode

require font: `WenQuanYi Mono for Powerline`

## Quick Setup

```sh
# retain git repository for version control
git clone https://github.com/ikatyang/configs ~/Documents/Github/ikatyang/configs

# link configs
ln -sf ~/Documents/Github/ikatyang/configs/vscode/locale.json ~/Library/Application\ Support/Code/User
ln -sf ~/Documents/Github/ikatyang/configs/vscode/settings.json ~/Library/Application\ Support/Code/User
ln -sf ~/Documents/Github/ikatyang/configs/vscode/keybindings.json ~/Library/Application\ Support/Code/User

# install extensions
code --install-extension bierner.emojisense # :emojisense: https://marketplace.visualstudio.com/items?itemName=bierner.emojisense
code --install-extension sgtsquiggs.vscode-active-file-status # Active File Status https://marketplace.visualstudio.com/items?itemName=sgtsquiggs.vscode-active-file-status
code --install-extension wmaurer.change-case # change-case https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case
code --install-extension PeterJausovec.vscode-docker # Docker https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker
code --install-extension EditorConfig.EditorConfig # EditorConfig for VS Code https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig
code --install-extension dbaeumer.vscode-eslint # ESLint https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
code --install-extension mkxml.vscode-filesize # filesize https://marketplace.visualstudio.com/items?itemName=mkxml.vscode-filesize
code --install-extension donjayamanne.githistory # Git History (git log) https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory
code --install-extension eamodio.gitlens # Git Lens — git blame annotations, code lens, and more https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens
code --install-extension SirTori.indenticator # Indenticator https://marketplace.visualstudio.com/items?itemName=SirTori.indenticator
code --install-extension yzhang.markdown-all-in-one # Markdown All in One https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one
code --install-extension PKief.markdown-checkbox # Markdown Checkbox https://marketplace.visualstudio.com/items?itemName=PKief.markdown-checkbox
code --install-extension bierner.markdown-checkbox # Markdown Checkboxes https://marketplace.visualstudio.com/items?itemName=bierner.markdown-checkbox
code --install-extension bierner.markdown-emoji # markdown-emoji https://marketplace.visualstudio.com/items?itemName=bierner.markdown-emoji
code --install-extension bierner.markdown-preview-github-styles # Markdown Preview Github Styling https://marketplace.visualstudio.com/items?itemName=bierner.markdown-preview-github-styles
code --install-extension DavidAnson.vscode-markdownlint # markdownlint https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint
code --install-extension PKief.material-icon-theme # Material Icon Theme https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme
code --install-extension zhuangtongfa.Material-theme # OneDark Pro https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme
code --install-extension christian-kohler.path-intellisense # Path Intellisense https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense
code --install-extension esbenp.prettier-vscode # Prettier - JavaScript formatter https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode
code --install-extension chrmarti.regex # Regex Previewer https://marketplace.visualstudio.com/items?itemName=chrmarti.regex
code --install-extension richie5um2.vscode-sort-json # Sort JSON objects https://marketplace.visualstudio.com/items?itemName=richie5um2.vscode-sort-json
code --install-extension Tyriar.sort-lines # Sort lines https://marketplace.visualstudio.com/items?itemName=Tyriar.sort-lines
code --install-extension wayou.vscode-todo-highlight # TODO Highlight https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight
code --install-extension eg2.tslint # TSLint https://marketplace.visualstudio.com/items?itemName=eg2.tslint
code --install-extension rbbit.typescript-hero # TypeScript Hero https://marketplace.visualstudio.com/items?itemName=rbbit.typescript-hero
code --install-extension qinjia.view-in-browser # View In Browser https://marketplace.visualstudio.com/items?itemName=qinjia.view-in-browser
code --install-extension deerawan.vscode-faker # vscode-faker https://marketplace.visualstudio.com/items?itemName=deerawan.vscode-faker
code --install-extension adamvoss.yaml # YAML https://marketplace.visualstudio.com/items?itemName=adamvoss.yaml
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
