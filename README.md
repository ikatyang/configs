# configs

my personal configs

## macOS

- [Brew](https://brew.sh/): package manager for macOS
- Resolve > “App” is damaged and can’t be opened. You should move it to the Trash.

  ```sh
  # allow apps from any source
  sudo spctl --master-disable
  ```

#### Apps

`*` means paid app

- browser
  - [Chrome](https://www.google.com.tw/chrome/)
    - [Official Download](https://www.google.com.tw/chrome/browser/desktop/)

- cloud
  - [Google Drive](https://www.google.com/drive/)
    - [Official Download](https://www.google.com/drive/download/)

- programming
  - [Xcode](https://developer.apple.com/xcode/): IDE for Apple Developer
    - [Mac App Store](https://itunes.apple.com/app/xcode/id497799835)
  - [Visual Studio Code](https://code.visualstudio.com/): code editor with intellisense
    - [Official Download](https://code.visualstudio.com/Download)
    - [configs](https://github.com/ikatyang/configs/tree/master/vscode)
  - [Yarn](https://yarnpkg.com/en/): nodejs package manager
    - `brew install yarn`
  - [tmux](https://tmux.github.io/): terminal multiplexer
    - `brew install tmux`
  - [Python](https://www.python.org/): python runtime, including a simple http server
    - `brew install python3`
  - [nvm](https://github.com/creationix/nvm): nodejs version manager
    - `brew install nvm`
  - [Node.js](https://nodejs.org/en/): javascript runtime
    - `nvm install stable`

- office
  - [Pages](https://www.apple.com/pages/)
    - [Mac App Store](https://itunes.apple.com/app/pages/id409201541)
  - [Numbers](https://www.apple.com/numbers/)
    - [Mac App Store](https://itunes.apple.com/app/numbers/id361304891)
  - [Keynote](https://www.apple.com/keynote/)
    - [Mac App Store](https://itunes.apple.com/app/keynote/id409183694)

- remote control
  - [TeamViewer](https://www.teamviewer.com/)
    - [Official Download](https://www.teamviewer.com/en/download/)
  - [Microsoft Remote Desktop](https://www.microsoft.com/en-us/cloud-platform/desktop-virtualization)
    - [Mac App Store](https://itunes.apple.com/app/microsoft-remote-desktop/id715768417)

- social network
  - [LINE](https://line.me/)
    - [Mac App Store](https://itunes.apple.com/app/line/id539883307)
  - [Twitter](https://twitter.com/)
    - [Mac App Store](https://itunes.apple.com/app/twitter/id409789998)
  - [Telegram Desktop](https://telegram.org/)
    - [Mac App Store](https://itunes.apple.com/app/telegram-desktop/id946399090)

- menubar
  - [Clipy](https://clipy-app.com/): clipboard extension ( jp )
    - [Official Download](https://clipy-app.com/)
  - [XMenu](http://www.devontechnologies.com/products/freeware/): file explorer
    - [Mac App Store](https://itunes.apple.com/app/xmenu/id419332741)
  - *[Bartender](https://www.macbartender.com/): menubar icon manager
    - [Official Download](https://www.macbartender.com/)
  - *[Skip Tunes](http://skiptunes.com/): music control center
    - [Mac App Store](https://itunes.apple.com/app/skip-tunes-for-spotify-and-itunes/id499695659)
  - *[iStat Menus](https://bjango.com/mac/istatmenus/): advenced system monitor
    - [Official Download](https://bjango.com/mac/istatmenus/)

- others
  - [Splashtop XDisplay](https://www.splashtop.com/wiredxdisplay): extra monitor
    - [Official Download](https://www.splashtop.com/wiredxdisplay)
  - [scroll reverser](https://pilotmoon.com/scrollreverser/)
    - [Official Download](https://pilotmoon.com/scrollreverser/)
  - [Yahoo KeyKey](https://github.com/yahoo/KeyKey): chinese input methods
    - [NewMobileLife](https://www.newmobilelife.com/2016/09/21/macos-sierra-install-yahoo-input-method-download/) ( zh-tw )
  - *[CleanMyMac](https://cleanmymac.com/): cleaner
    - [Official Download](https://cleanmymac.com/)
  - *[Moom](https://manytricks.com/moom): window zooming
    - [Mac App Store](https://itunes.apple.com/app/moom/id419330170)
  - *[Little Snitch](https://www.obdev.at/products/littlesnitch/index.html): firewall
    - [Official Download](https://www.obdev.at/products/littlesnitch/index.html)
  - *[jitouch](https://www.jitouch.com/): trackpad gesture
    - [Official Download](https://www.jitouch.com/)
    - [configs](https://github.com/ikatyang/configs/tree/master/others/jitouch.md)

## RSS Feeds

```sh
# News

## oschina (zh-cn)
https://www.oschina.net/news/rss?show=%E7%BB%BC%E5%90%88%E6%96%B0%E9%97%BB

# Blog

## github
https://github.com/blog.atom

## vscode
https://code.visualstudio.com/feed.xml

## ruanyf (zh-cn)
http://feeds.feedburner.com/ruanyifeng

# Release

## vscode
https://github.com/Microsoft/vscode/releases.atom

## typescript
https://github.com/Microsoft/TypeScript/releases.atom

## tslint
https://github.com/palantir/tslint/releases.atom

## tslint-eslint-rules
https://github.com/buzinas/tslint-eslint-rules/releases.atom

## lerna
https://github.com/lerna/lerna/releases.atom
```
