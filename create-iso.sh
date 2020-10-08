#!/bin/bash
hdiutil create -o /tmp/mojave.cdr -size 6g -layout SPUD -fs HFS+J
hdiutil attach /tmp/mojave.cdr.dmg -noverify -mountpoint /Volumes/install_mojave
sudo /Applications/Install\ macOS\ mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/install_mojave
mv /tmp/mojave.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ mojave
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/Install_mojave.iso
mv ~/Desktop/Install_mojave.iso.cdr ~/Desktop/Install_mojave.iso
rm ~/Desktop/InstallSystem.dmg