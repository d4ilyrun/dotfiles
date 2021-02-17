#!/bin/bash

WPA_CONF=/etc/wpa_supplicant/wpa_supplicant.conf
INTERFACE=wlan0

connect() {
    sudo wpa_supplicant -B -i $INTERFACE -c $WPA_CONF
}

kill_wpa() {
    # Terminate already running wpa instances
    sudo killall wpa_supplicant

    # Wait until the processes have been shut down
    while pgrep -u $UID -x wpa_supplicant >/dev/null; do
        sleep 1;
    done
}

# if an old instance is still running kill it
if pgrep -x wpa_supplicant > /dev/null; then kill_wpa; fi

connect
