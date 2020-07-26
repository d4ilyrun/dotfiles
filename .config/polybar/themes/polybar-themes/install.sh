#!/bin/bash
current=$PWD

if [ $# -eq 1 ];then
    if [ $1 = "clean" ]; then
        # clears polybar repertory
        cd ~/.config/polybar
        mv modules/ themes/ ~ && rm -rf *
        mv ~/modules/ ~/themes/ .
        cd $current
    # installs chosen bar
    elif [ -e "polybar-$1" ]; then
        cd $current
        cd "polybar-$1"
        cp -r fonts/* ~/.local/share/fonts
        fc-cache -v
        cp -r * ~/.config/polybar
        ~/.config/polybar/launch.sh
    else
        clear
        echo "Error: Invalid argument"
    fi
else
    clear
    echo "Error: Invalid argument"
fi