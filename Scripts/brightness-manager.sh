#!/bin/bash

DRIVER_DIR="/sys/class/backlight/intel_backlight"
BRIGHTNESS_FILE="$DRIVER_DIR/brightness"
BRIGHTNESS=`cat $BRIGHTNESS_FILE`
CHANGE_FACTOR=10000

brightness_up() {
    echo "brightness_up -> $BRIGHTNESS"
    CHANGE_FACTOR=$((CHANGE_FACTOR * $1))
    BRIGHTNESS=$(( BRIGHTNESS + CHANGE_FACTOR))
}

brightness_down() {
    echo "brightness_down -> $BRIGHTNESS"
    CHANGE_FACTOR=$((CHANGE_FACTOR * $1))
    BRIGHTNESS=$(( BRIGHTNESS - CHANGE_FACTOR))
}

if [[ $# -ne 2 ]]; then
    echo "ERROR: invalid numer of args" 1>&2
    exit 1
fi

case $1 in
    "+")
        brightness_up $2
        ;;
    "-")
        brightness_down $2
        ;;
    *)
        echo "ERROR: unknown arg '$1'" 1>&2
        exit 1
        ;;
esac

# update brightness
sudo echo -n $BRIGHTNESS > $BRIGHTNESS_FILE

exit 0
