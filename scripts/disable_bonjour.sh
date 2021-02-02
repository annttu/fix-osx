#!/bin/bash


if [ $(sw_vers -productVersion |cut -d '.' -f 2) -lt 11 ]
then
# For macos < 10.11
sudo defaults write /System/Library/LaunchDaemons/com.apple.mDNSResponder ProgramArguments -array-add "-NoMulticastAdvertisements"

else
# For macos >= 10.11
sudo defaults write /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool true

fi
