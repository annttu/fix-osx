#!/bin/bash

# Prevent photos.app from popping up when device is plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
