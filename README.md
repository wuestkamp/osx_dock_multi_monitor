Multi Monitor Dock Mover OSX
========

This will move the Dock in dual monitor setup for OSX (only tested on High Sierra). When mouse is on left monitor
Dock will be moved to left side, else to right side. Best works if Dock is auto hidden.

This tool uses http://www.hamsoftengineering.com/codeSharing/MouseTools/MouseTools.html

Install
-------
Clone this repo in some location. Then

`cp script.scpt.env script.scpt` and adjust path in it

`cp osx_dock_multi_monitor.plist.env osx_dock_multi_monitor.plist` and adjust path in it

Then to start or stop:

`launchctl load -w osx_dock_multi_monitor.plist`

`launchctl unload -w osx_dock_multi_monitor.plist`
