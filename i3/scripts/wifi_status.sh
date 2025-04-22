#!/bin/bash
SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)

if [ -z "$SSID" ]; then
    echo "WiFi: Down"
else
    echo "  $SSID"
fi

