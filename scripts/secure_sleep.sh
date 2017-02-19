#!/bin/bash

# Enable hibernate mode for safety

sudo pmset -a hibernatemode 25 autopoweroff 0 autopoweroffdelay 1

# Destroy file vault password from memory and hibernate image
sudo pmset -a destroyfvkeyonstandby 1

# Disable annoying waking features, which cause problems with hibernate
sudo pmset -a standbydelay 0 standby 0 powernap 0

# Disable power nap
sudo /usr/libexec/PlistBuddy -c 'Set "Custom Profile":"AC Power":DarkWakeBackgroundTasks 0' \
    /Library/Preferences/SystemConfiguration/com.apple.PowerManagement.plist

echo "Reboot require to disable power nap"
