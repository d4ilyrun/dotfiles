#!/bin/bash

DIR=$PWD
SCRIPT=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPT`
DOT="$SCRIPTPATH/.."

cd $DOT

# installing yay helper
YAY=`sh Install/install-yay.sh`
if [ $YAY -eq 1 ]; then
    exit 1
fi

# CLI
yay --no-confirm -S\
    fish\
    neovim\
    neovim-plug\
    htop\
    feh\
    neofetch

# oh my fish
curl -L https://get.oh-my.fish | fish
omf update
omf install bobthefish

# GUI
yay --no-confirm -S\
    i3-gaps\
    i3lock-fancy\
    picom\
    alacritty\
    dunst\
    polybar\
    rofi

# FONTS
yay --no-confirm -S\
    ttf-fira-code\
    ttf-font-awesome\
    siji-git\
    ttf-unifont\
    otf-ipafont\
    ttf-ubuntu-font-family\
    ttf-ionicons

cd $DIR
