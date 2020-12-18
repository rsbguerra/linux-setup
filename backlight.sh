#!/bin/bash
sudo apt install xbacklight
sudo ln -s /sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-LVDS-1/intel_backlight  /sys/class/backlight

FILE=/etc/X11/xorg.conf
if [ -f "$FILE" ]; then
    truncate -s 0 $FILE
fi

sudo echo "Section "Device"
        Identifier  "Intel Graphics" 
        Driver      "intel"
        Option      "Backlight"  "intel_backlight"
    EndSection" >> $FILE

echo "Logout and login for changes to apply changes"
