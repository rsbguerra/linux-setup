#!/bin/bash

# Change the line below according to your hardware
BRIGHTNESS_FILE="/var/lib/systemd/backlight/pci-0000:00:02.0:backlight:intel_backlight"
BRIGHTNESS=$(cat "$BRIGHTNESS_FILE")
BRIGHTNESS=$(($BRIGHTNESS*255/65535))
BRIGHTNESS=${BRIGHTNESS/.*} # truncating to int, just in case
echo $BRIGHTNESS > "$BRIGHTNESS_FILE"