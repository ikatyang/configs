# System Preferences

macOS Catalina

```sh
# Apple ID

  Media & Purchases -> enable: Use Touch ID for Purchases

# Dock

  Minimize windows using: Scale effect
  enable: Automatically hide and show the Dock

# Mission Control

  disable: Automatically rearrange Spaces based on most recent use

  # Hot Corners

    top-left: Mission Control
    top-right: Deskptop
    bottom-left: Launchpad
    bottom-right: Lock Screen

# Language & Region

  Preferred languages: en, zh-tw, zh-cn, jp

  Region: Taiwan
  First day of week: Sunday

# Accessibility

  Pointer Control -> Trackpad Options -> enable dragging with `three finger drag`

# Security & Privacy

  Require password [immediately] after sleep or screen saver begins

#  Software Update

  disable: Install macOS updates

# Bluetooth

  enable: Show Bluetooth in menu bar

# Sound

  Input -> Input volume: 0
  Sound Effects -> enable: Show volume in menu bar

# Keyboard

  enable: Show keyboard and emoji viewers in menu bar

  Text -> disable: Correct spelling automatically
          disable: Capitalize words automatically
          disable: Add period with double-space
          disable: Use smart quotes and dashes

  Shortcuts -> Screen Shots -> Copy Picture of selected area to the clipboard: ⌃⌥A

# Trackpad

  # Point & Click

    enable: Look up & data detectors with "Tap with three fingers"
    enable: Secondary click with "Click or tap with two fingers"
    enable: Tap to click with "Tap with one finger"

  # Scroll & Zoom

    enable: Scroll direction: Natural with "Content tracks finger movement"
    enable: Zoom in or out with "Pinch with two fingers"
    enable: Smart zoom with "Double-tap with two fingers"
    enable: Rotate with "Rotate with two fingers"

  # More Gestures

    enable: Swipe between pages with "Scroll left or right with two fingers"
    enable: Swipe between full-screen apps with "Swipe left or right with four fingers"
    enable: Notification Center with "Swipe left from the right edge with two fingers"
    enable: Mission Control with "Swipe up with four fingers"
    enable: App Exposé with "Swipe down with four fingers"
    enable: Launchpad with "Pinch with thumb and three fingers"
    enable: Show Desktop with "Spread with thumb and three fingers"

# Mouse

  # Point & Click

    enable: Scroll direction: Natural with "Content tracks finger movement"
    enable: Secondary click with "Click on right side"
    enable: Smart zoom with "Double-tap with one finger"

  # More Gestures

    enable: Swipe between pages with "Scroll left or right with one finger"
    enable: Swipe between full-screen apps with "Swipe left or right with two fingers"
    enable: Mission Control with "Double-tap with two fingers"

# Sharing

  Computer Name: Ika’s Mac
```

```sh
# Dictionary

  use Wikipedia, AppleDictionary, Simplified Chinese-English, Japanese-English

# Finder

  # Show hidden file:

    $ defaults write com.apple.Finder AppleShowAllFiles true
    $ killall Finder

  # View

    Show Path Bar
    Show Status Bar

  # Preferences

    New Finder windows show: Documents
    Sidebar: Airdrop, Applications, Desktop, Documents, Downloads, ikatyang

    # Advanced

      enable: Show all filename extensions
      enable: Keep folders on top when sorting by name
      When performing a search: Search the Current Folder

# Safari

  # General

    Remove history items: Manually
    Remove download list items: Manually

  # Tabs

    enable: Show website icons in tabs

  # AutoFill
  # Search

  # Advanced

    enable: Show full website address
    Default encoding: "Unicode (UTF-8)"
    enable: Show Develop menu in menu bar
```
