#!/bin/bash

# Enable hibernate mode for safety

sudo pmset -a hibernatemode 25 autopoweroff 1 autopoweroffdelay 1

# Destroy file vault password from memory and hibernate image
sudo pmset -a destroyfvkeyonstandby 1

# Disable power nap
sudo /usr/libexec/PlistBuddy -c 'Set "Custom Profile":"AC Power":DarkWakeBackgroundTasks 1' \
    /Library/Preferences/SystemConfiguration/com.apple.PowerManagement.plist

echo "Reboot require to disable power nap"
