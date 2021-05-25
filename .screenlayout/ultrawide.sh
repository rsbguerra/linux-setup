#!/bin/sh
xrandr --newmode "2560x1080_60" 230.76  2560 2728 3000 3440  1080 1081 1084 1118  -HSync +Vsync
xrandr --addmode HDMI-1 2560x1080_60
xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --primary --mode 2560x1080_60 --pos 1920x0 --rotate normal
