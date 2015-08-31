#!/bin/bash

brew install privoxy
ln -sfv /usr/local/opt/privoxy/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.privoxy.plist
