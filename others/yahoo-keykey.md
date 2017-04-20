# Yahoo KeyKey

#### disable OneKey service:

modify `~/Library/Preferences/com.yahoo.KeyKey.OneKey.plist`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>ShortcutKey</key>
  <string>
</string>
</dict>
</plist>
```
