#!/bin/bash
##create temporary space for the .dmg
hdiutil create -o /tmp/mojave.cdr -size 6g -layout SPUD -fs HFS+J
hdiutil attach /tmp/mojave.cdr.dmg -noverify -mountpoint /Volumes/install_mojave
##now create a dmg as officially recommended from the installer
sudo /Applications/Install\ macOS\ mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/install_mojave
#move it to the desktop
mv /tmp/mojave.cdr.dmg ~/Desktop/InstallSystem.dmg
#unmount Installer
hdiutil detach /Volumes/Install\ macOS\ mojave
#format to iso keeping the original .dmg
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/Install_mojave.iso
mv ~/Desktop/Install_mojave.iso.cdr ~/Desktop/Install_mojave.iso
#remove .dmg
rm ~/Desktop/InstallSystem.dmg
