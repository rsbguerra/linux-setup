#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

CONFIG=""

if xrandr | grep "HDMI-1 connected primary" > /dev/null; then
    CONFIG="config-hdmi.ini"
    # Attemp to launch external monitor polybar (Fails if extmon isn't present)
    polybar extmon -c $(dirname $0)/$CONFIG &
else 
    CONFIG="config.ini"
fi

# Launch polybar
polybar primary -c $(dirname $0)/$CONFIG &

