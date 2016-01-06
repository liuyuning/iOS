# iOS
The code for ios Dev.


# Find The Settings path of prefs

First of All, **Using a Jailbroken iOS device**, You can read the file at `/private/var/mobile/Library/Preferences/com.apple.Preferences.plist`

[Reference](http://stackoverflow.com/questions/8246070/ios-launching-settings-restrictions-url-scheme#comment56751438_33896318)

 1. Launch system "Settings" navigate to item, and send the "Settings" to background.
 Example:Settings -> General -> Accessibility -> Subtitles& Captioning -> Style
 
 
 2. Read the file by iFile installed by Cydia, or export by iFunbox.
 Path:`/private/var/mobile/Library/Preferences/com.apple.Preferences.plist`
 
 3. Read the 
 Key "kPreferencePositionKey"
 Value "prefs:root=General%23-64&path=ACCESSIBILITY%230/SUBTITLES_CAPTIONING%230/currentTheme%23-64"
 
 4. In you code add the openURL code like below.
 ```objc
   NSString *stringURL = @"prefs:root=General&path=ACCESSIBILITY%230/SUBTITLES_CAPTIONING%230/currentTheme%23-64";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:stringURL]];
 ```
 
