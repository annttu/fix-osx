#!/bin/bash

# Prevent App Nap pausing Spotify

defaults write com.spotify.client NSAppSleepDisabled -bool YES

echo "Restart spotify."
