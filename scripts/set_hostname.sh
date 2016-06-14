#!/bin/bash

if [ -z "$1" ]
then
	echo "Usage $0 <name>"
	exit 1
fi



sudo scutil --set ComputerName "$1"
sudo scutil --set HostName "$1"
sudo scutil --set LocalHostName "$1"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$1"
