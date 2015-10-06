#!/bin/bash

function disable_daemon {
	  echo "Disabling ${1}"
	    sudo launchctl load -w /System/Library/LaunchDaemons/${1}.plist
}

#disable_daemon com.apple.apsd
disable_daemon com.apple.AssetCacheLocatorService
#disable_daemon com.apple.awacsd
#disable_daemon com.apple.awdd
disable_daemon com.apple.CrashReporterSupportHelper
disable_daemon com.apple.GameController.gamecontrollerd
disable_daemon com.apple.SubmitDiagInfo
#disable_daemon com.apple.TMCacheDelete
