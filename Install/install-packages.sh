#!/bin/bash

DIR=$PWD
SCRIPT=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPT`
DOT="$SCRIPTPATH/.."

cd $DOT

# installing yay helper
`sh Install/install-yay.sh`
if [ $? -eq 1 ]; then
    exit 1
fi

# CLI
yay --noconfirm -S\
    fish\
    neovim\
    htop\
    feh\
    neofetch

# neovim packages
yay --noconfirm -S neovim-plug fzf


# GUI
yay --noconfirm -S\
    i3-gaps\
    i3lock-fancy\
    picom-rounded-corners\
    alacritty\
    dunst\
    polybar\
    rofi

# FONTS
yay --noconfirm -S\
    ttf-fira-code\
    ttf-font-awesome\
    siji-git\
    ttf-unifont\
    otf-ipafont\
    ttf-ubuntu-font-family\
    ttf-ionicons

cd $DIR
