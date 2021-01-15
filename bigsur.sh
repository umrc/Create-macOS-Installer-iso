#!/bin/bash
sudo hdiutil create -o /tmp/BigSur -size 16384m -volname BigSur -layout SPUD -fs HFS+J
sudo hdiutil attach /tmp/BigSur.dmg -noverify -mountpoint /Volumes/BigSur
sudo /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/createinstallmedia --volume /Volumes/BigSur --nointeraction
hdiutil eject -force /Volumes/Install\ macOS\ Big\ Sur
hdiutil convert /tmp/BigSur.dmg -format UDTO -o ~/Desktop/BigSur
mv -v ~/Desktop/BigSur.cdr ~/Desktop/BigSur.iso
sudo rm -fv /tmp/BigSur.dmg
