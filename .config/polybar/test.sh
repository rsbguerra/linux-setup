CONFIG="config.ini"

if xrandr | grep "HDMI-1 connected" > /dev/null; then
    echo "config "$CONFIG
else 
    CONFIG=$(dirname $0)/config-hdmi.ini
    echo "disconnectd "$CONFIG
fi
