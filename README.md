# configs

configs for ikatyang

## macOS

Install [Brew](https://brew.sh/) ( package manager for macOS )

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

**NOTE**: Resolve `“App” is damaged and can’t be opened. You should move it to the Trash.`

```sh
# allow apps from any source
sudo spctl --master-disable
```

#### Apps

| Type    | Application                         | Install                                     | configs                         |
| ------- | ----------------------------------- | ------------------------------------------- | ------------------------------- |
| browser | [Google Chrome][chrome]             | `brew cask install google-chrome`           |                                 |
| cloud   | [Google Drive][gdrive]              | `brew cask install google-drive`            |                                 |
| prog    | [Git][git]                          | built-in                                    | [configs][git-configs]          |
| prog    | [Zsh][zsh]                          | built-in                                    | [configs][zsh-configs]          |
| prog    | [Xcode][xcode]                      | [Mac App Store][xcode-app]                  |                                 |
| prog    | [Visual Studio Code][vscode]        | `brew cask install visual-studio-code`      | [configs][vscode-configs]       |
| prog    | [Yarn][yarn]                        | `brew install yarn`                         |                                 |
| prog    | [tmux][tmux]                        | `brew install tmux`                         | [configs][tmux-configs]         |
| prog    | [nvm][nvm]                          | `brew install nvm`                          |                                 |
| prog    | [Node.js][nodejs]                   | `brew install node`                         |                                 |
| office  | [Pages][pages]                      | [Mac App Store][pages-app]                  |                                 |
| office  | [Numbers][numbers]                  | [Mac App Store][numbers-app]                |                                 |
| office  | [Keynote][keynote]                  | [Mac App Store][keynote-app]                |                                 |
| remote  | [TeamViewer][teamviewer]            | `brew cask install teamviewer`              |                                 |
| remote  | [Microsoft Remote Desktop][mstsc]   | [Mac App Store][mstsc-app]                  |                                 |
| social  | [LINE][line]                        | [Mac App Store][line-app]                   |                                 |
| social  | [Twitter][twitter]                  | [Mac App Store][twitter-app]                |                                 |
| social  | [Telegram Desktop][telegram]        | [Mac App Store][telegram-app]               |                                 |
| social  | [Caprine][caprine]                  | `brew cask install caprine`                 |                                 |
| menubar | [Clipy][clipy]                      | `brew cask install clipy`                   |                                 |
| menubar | [XMenu][xmenu]                      | [Mac App Store][xmenu-app]                  |                                 |
| menubar | 💰 [Bartender][bartender]           | `brew cask install bartender`               | [configs][bartender-configs]    |
| menubar | 💰 [Skip Tunes][skip-tunes]         | [Mac App Store][skip-tunes-app]             |                                 |
| menubar | 💰 [iStat Menus][istat-menus]       | `brew cask install istat-menus`             | [configs][istat-menus-configs]  |
|         | [p7zip][p7zip]                      | `brew install p7zip`                        |                                 |
|         | [Lightshot Screenshot][screenshot]  | [Mac App Store][screenshot-app]             | shortcut: ⌃⌥⇧A               |
|         | [Scroll Reverser][scroll-reverser]  | `brew cask install scroll-reverser`         | disable `Reverse Trackpad`      |
|         | [VLC media player][vlc]             | `brew cask install vlc`                     |                                 |
|         | [Yahoo KeyKey][yahoo-keykey]        | [Download][yahoo-keykey-download]           | [configs][yahoo-keykey-configs] |
|         | [Splash XDisplay][xdisplay]         | [Download][xdisplay-download]               |                                 |
|         | [Soundflower][soundflower]          | `brew cask install soundflower`             |                                 |
|         | [Kap][kap]                          | `brew cask install kap`                     |                                 |
|         | 💰 [Reeder][reeder]                 | [Mac App Store][reeder-app]                 | [configs][reeder-configs]       |
|         | 💰 [CleanMyMac][cleanmymac]         | `brew cask install cleanmymac`              |                                 |
|         | 💰 [Moom][moom]                     | [Mac App Store][moom-app]                   | grid with `12` x `4` cells      |
|         | 💰 [Little Snitch][little-snitch]   | `brew cask install little-snitch`           |                                 |
|         | 💰 [jitouch][jitouch]               | `brew cask install jitouch`                 | [configs][jitouch-configs]      |

#### System Preferences

- [Dock Layouts][dock-layouts]
- [System Preferences][system-preferences]

[chrome]:           https://www.google.com/chrome/          "Google Chrome"
[gdrive]:           https://www.google.com/drive/           "Google Drive"
[git]:              https://git-scm.com/                    "Git: version control system"
[zsh]:              https://www.zsh.org/                    "Zsh: powerful shell"
[xcode]:            https://developer.apple.com/xcode/      "Xcode: IDE for Apple Developer"
[vscode]:           https://code.visualstudio.com/          "Visual Studio Code: code editor with intellisense, etc."
[yarn]:             https://yarnpkg.com/                    "Yarn: powerul nodejs package manager"
[tmux]:             https://tmux.github.io/                 "tmux: terminal multiplexer"
[nvm]:              https://github.com/creationix/nvm       "nvm: nodejs version manager"
[nodejs]:           https://nodejs.org/                     "Node.js: javascript runtime"
[pages]:            https://www.apple.com/pages/            "Pages"
[numbers]:          https://www.apple.com/numbers/          "Numbers"
[keynote]:          https://www.apple.com/keynote/          "Keynote"
[teamviewer]:       https://www.teamviewer.com/             "Teamviewer: remote control"
[mstsc]:            https://www.microsoft.com/cloud-platform/desktop-virtualization "Microsoft Remote Desktop"
[line]:             https://line.me/                        "LINE"
[twitter]:          https://twitter.com/                    "Twitter"
[telegram]:         https://telegram.org/                   "Telegram Desktop"
[caprine]:          https://github.com/sindresorhus/caprine "Caprine: unofficial Facebook Messenger app"
[clipy]:            https://clipy-app.com/                  "Clipy: clipboard extension"
[xmenu]:            http://www.devontechnologies.com/products/freeware/ "XMenu: file explorer"
[bartender]:        https://www.macbartender.com/           "Bartender: menubar icon manager"
[skip-tunes]:       http://skiptunes.com/                   "Skip Tunes: music control center"
[istat-menus]:      https://bjango.com/mac/istatmenus/      "iStat Menus: advenced system monitor"
[p7zip]:            http://www.7-zip.org/download.html      "p7zip: 7z for unix"
[screenshot]:       https://app.prntscr.com/en/index.html   "Lightshot Screenshot"
[scroll-reverser]:  https://pilotmoon.com/scrollreverser/   "Scroll Reverser"
[vlc]:              http://www.videolan.org/index.html      "VLC media player"
[reeder]:           http://reederapp.com/mac/               "Reeder: rss reader"
[cleanmymac]:       https://cleanmymac.com/                 "CleanMyMac: cleaner"
[moom]:             https://manytricks.com/moom             "Moom: window zooming"
[little-snitch]:    https://www.obdev.at/products/littlesnitch/index.html "Little Snitch: firewall"
[jitouch]:          https://www.jitouch.com/                "jitouch: trackpad gesture"
[yahoo-keykey]:     https://github.com/yahoo/KeyKey         "Yahoo KeyKey: chinese input methods"
[xdisplay]:         https://www.splashtop.com/wiredxdisplay "Splashtop XDisplay: extra monitor"
[soundflower]:      https://github.com/mattingalls/Soundflower "Soundflower: audio redirector"
[kap]:              https://getkap.co/                      "Kap: screen recorder"

[xcode-app]:      https://itunes.apple.com/app/id497799835  "Xcode from Mac App Store"
[pages-app]:      https://itunes.apple.com/app/id409201541  "Pages from Mac App Store"
[numbers-app]:    https://itunes.apple.com/app/id361304891  "Numbers from Mac App Store"
[keynote-app]:    https://itunes.apple.com/app/id409183694  "Keynote from Mac App Store"
[mstsc-app]:      https://itunes.apple.com/app/id715768417  "Microsoft Remote Desktop from Mac App Store"
[line-app]:       https://itunes.apple.com/app/id539883307  "LINE from Mac App Store"
[twitter-app]:    https://itunes.apple.com/app/id409789998  "Twitter from Mac App Store"
[telegram-app]:   https://itunes.apple.com/app/id946399090  "Telegram Desktop from Mac App Store"
[xmenu-app]:      https://itunes.apple.com/app/id419332741  "XMenu from Mac App Store"
[skip-tunes-app]: https://itunes.apple.com/app/id499695659  "Skip Tunes from Mac App Store"
[screenshot-app]: https://itunes.apple.com/app/id526298438  "Lightshot Screenshot from Mac App Store"
[reeder-app]:     https://itunes.apple.com/app/id880001334  "Reeder from Mac App Store"
[moom-app]:       https://itunes.apple.com/app/id419330170  "Moom from Mac App Store"

[yahoo-keykey-download]: https://www.newmobilelife.com/2016/09/21/macos-sierra-install-yahoo-input-method-download/ "Yahoo KeyKey from NewMobileLife"
[xdisplay-download]: https://www.splashtop.com/wiredxdisplay "Splashtop XDisplay from Official Site"

[git-configs]:          https://github.com/ikatyang/configs/tree/master/others/git.md         "git configs"
[zsh-configs]:          https://github.com/ikatyang/configs/tree/master/others/zsh.md         "zsh configs"
[vscode-configs]:       https://github.com/ikatyang/configs/tree/master/vscode/               "vscode configs"
[tmux-configs]:         https://github.com/ikatyang/configs/tree/master/others/tmux.md        "tmux configs"
[bartender-configs]:    https://github.com/ikatyang/configs/tree/master/others/bartender.md   "bartender configs"
[istat-menus-configs]:  https://github.com/ikatyang/configs/tree/master/others/istat-menus.md "istat-menus configs"
[reeder-configs]:       https://github.com/ikatyang/configs/tree/master/reeder/               "reeder configs"
[jitouch-configs]:      https://github.com/ikatyang/configs/tree/master/others/jitouch.md     "jitouch configs"
[yahoo-keykey-configs]: https://github.com/ikatyang/configs/tree/master/yahoo-keykey/         "yahoo-keykey configs"

[dock-layouts]:         https://github.com/ikatyang/configs/tree/master/others/dock-layouts.md "dock layouts"
[system-preferences]:   https://github.com/ikatyang/configs/tree/master/others/system-preferences.md "system preferences"
