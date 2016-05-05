#!/bin/bash

#############################################################
# Set hostname
sudo scutil --set HostName Ayla-JoeLu-MBPR


#############################################################
# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Make bottom-left hotspot turn off screen
# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
defaults write com.apple.dock wvous-bl-corner -int 10 && \
defaults write com.apple.dock wvous-bl-modifier -int 0
# Make hidden app icons translucent in the dock
defaults write com.apple.dock showhidden -bool YES
# Disable automatically re-arrange Spaces based on recent use
defaults write com.apple.dock mru-spaces -bool false
# Make Dock appear on the left (instead of the bottom by default)
defaults write com.apple.dock orientation -string left && \
# Add a spacer to the left side of the Dock (where the applications are)
defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'

killall Dock

defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Enable Ctrl(^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
# Follow the keyboard focus while zoomed in
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 10
# Set the idle time
defaults -currentHost write com.apple.screensaver idleTime 60

# Set default Finder location to home folder (~/)
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
# Disable ext change warning
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Show absolute path in finder's title bar.
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true
# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true
# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true && \
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true && \
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Put Screenshots in the ~/Pictures folder
defaults write com.apple.screencapture location ~/Pictures/

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Trackpad: enable trackpad's secondary click
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2 && \
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true && \
#defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1 && \
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true
# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"


#############################################################
# Agree to Xcode
sudo xcrun cc


#############################################################
# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable


#############################################################
# Github Setup
git config --global alias.st "status" && \
git config --global alias.ci "commit" && \
git config --global alias.co "checkout" && \
git config --global user.name "Ayla Joe.Lu" && \
git config --global user.email "joe.lu@aylanetworks.com" && \
git config --global github.user jslu && \
git config --global core.editor "vi" && \
git config --global color.ui true && \
git config --global column.ui auto && \
git config --global push.default simple

git config --global pager.diff "diff-so-fancy | less --tabs=4 -RFX" && \
git config --global pager.show "diff-so-fancy | less --tabs=4 -RFX"
