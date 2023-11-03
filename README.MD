# **LanguageBreak**
Jailbreak for any kindle running FW 5.16.2.1.1 or **LOWER**

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/E1E1QLG4D)

**The exploit works best around version 5.16.2, so if you are on lower firmware you should consider updating**

Do not update past 5.16.2.1.1 even after jailbreak, there have been big changes since and **everything** is broken, only thing you can do on these versions is downgrade (if your jailbreak survived).

Big thanks to Bluebotlabs for all the help along the way and GeorgeYellow and bulltricks for bringing the vulnerability to light

The latest tarball can always be found [here]("https://github.com/notmarek/LanguageBreak/releases/latest")

## 
Make sure to remove any kind of password lock - if you forget to this and are stuck on the password screen enter 111222777 and the kindle will factory reset.


Your files **will** be deleted make sure to make a backup.

# Installation

## Before jailbreak

1. Make sure to read the entirety of the instructions **before** proceeding.
2. Enable airplane mode
3. Make sure that there are no stray .bin files or update.bin.tmp.partial files on the kindle
4. Repeat number 3 troughout the proccess

## Jailbreak
    
1. Type ;enter_demo in the Kindle search bar
2. Reboot the device
3. Once in demo mode, skip setting up wifi and enter random values for store registration
4. Skip searching for a demo payload
5. Select the "standard" demo type
6. Press "Done" at the prompt to sideload content.
7. Once the demo is setup, do the "secret gesture" (double finger tap on bottom right of screen then swipe left)
8. Enter the demo configuration menu by typing ;demo into the search bar
9. Select the "Sideload Content" option
10. Copy the contents of the LanguageBreak folder to the Kindle - merging and replacing all files
11. Unplug your kindle and go back to the demo menu (viz. step 8)
12. Select the "Resell Device" option press Yes/Resell
13. Now wait for the press power button to start
14. The second it appears plug your kindle back into your computer and copy the contents of the LanguageBreak folder into it once again, overwrite files then safely eject
15. Hold the power button as instructed on screen
16. A language selection menu should appear in a few seconds
17. Choose Chinese (The one above the odd Pseudot language, and/or below Japanese)
18. Your kindle should reboot and you should see some log message on the screen
    
## After jailbreak

1. After the device has rebooted, type ;uzb into the search bar
2. Connect the device to a PC and copy `Update_hotfix_languagebreak-{language you want to end up with}.bin` to the root of the Kindle storage
3. Eject the device and either enter ;dsts or swipe down and select the settings icon to enter the device settings menu
4. Select `Update Your Kindle` to install the hotfix
5. This will take your device out of demo mode and clean up unneeded jailbreak files.
6. You will now probably be in `managed mode`
    
## Exiting managed/demo mode after jailbreak
    
### Unregistered kindle
1. Enter `;demo` into the search bar
2. Press the right button
3. The device will say that its "entering demo", but will actually reset into normal mode in English
4. After this check if you have an mkk folder on your kindle - if it's missing reinstall then hotfix and have fun :)

### Registered kindle
1. Enter `;enter_demo` into the search bar
2. Reboot your device
3. The device will be in full demo mode so do the setup without wifi and with random values
4. Do the secret gesture to get into the kindle UI
5. Enter `;demo` into the search bar
6. Choose `Resell device` and press `Resell/Yes`
7. The device will actually reset into normal mode in English
4. After this check if you have an mkk folder on your kindle - if it's missing reinstall then hotfix and have fun :)


# FAQ
```
Q: How do  i check that it worked?
A (before installing hotfix): Install hotfix, if you can do that then it worked.
A (after installing hotfix): Type `;log` into the search bar, this should show some text at the top of the screen.

Q: Where are the hotfix files?
A: The structure of the tarball is as follows
LanguageBreak.tar.gz
|-- LanguageBreak
|	|-- documents
|	|	|-- dictionaries
|	|	|	|-- a; export SLASH=$(awk 'BEGIN {print substr(ARGV[1], 0, 1)}' ${PWD}); sh ${SLASH}mnt${SLASH}us${SLASH}jb
|	|	|	|-- amisane
|	|-- DONT_CHECK_BATTERY
|	|-- jb
|	|-- patchedUks
|	|-- .demo
|	|	|-- boot.flag
|-- Update_hotfix_languagebreak-*.bin
```

# Troubleshooting
Can't seem to get it to work?

The exploit works best around version 5.16.2, so if you are on lower firmware you should consider updating

Download the update file of the kindle version you are currently on from amazon install it and try again.

```
PW5: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_11th_5.XX.X.bin
PW4: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_v2_5.XX.X.bin
PW3: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_5.XX.X.bin
Kindle 11th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_11th_5.XX.X.bin
Kindle 10th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_10th_5.XX.X.bin
Kindle 8th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_8th_5.XX.X.bin
Scribe: https://s3.amazonaws.com/firmwaredownloads/update_kindle_scribe_5.XX.X.bin
Oasis 10th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_oasis_v2_5.XX.X.bin
Oasis 9th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_oasis_5.XX.X.bin
Oasis 8th Gen: https://s3.amazonaws.com/firmwaredownloads/update_kindle_oasis_5.XX.X.bin
```

So version 5.16.2.1.1 for PW4 would be [https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_v2_5.16.2.1.1.bin](]https://s3.amazonaws.com/firmwaredownloads/update_kindle_all_new_paperwhite_v2_5.16.2.1.1.bin)


[Consider buying me a coffee :)]("https://ko-fi.com/notmarek")
