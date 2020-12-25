#!/bin/bash

exit_with_error() {
    echo "Error during installation process. Aborting." >&2
    exit 1
}

DIR=$PWD
SCRIPT=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPT`
DOT="$SCRIPTPATH/.."
MOZILLA="$DOT/.mozilla"

PKG_INSTALL="$SCRIPTPATH/install-packages.sh"
SSH_INSTALL="$SCRIPTPATH/git-ssh/generate-key.sh"
FIREFOX_INSTALL="$MOZILLA/install.sh"


`sh $PKG_INSTALL`
if [ $? -eq 1 ]; then
    exit_with_error
fi

# Setting up
cd $DOT
mkdir -pv ~/Images/Screenshots
mkdir -v ~/.config

# Copying dotfiles
mkdir -pv $HOME/.config
cp -iv -r .config/* $HOME/.config

# Wallpaper
cp -vi -r Images/Wallpaper $HOME/Images/Wallpaper
feh --bg-scale $HOME/Images/Wallpaper/30*

# Installing scripts
sudo cp -vi Scripts/v3lock/v3lock /bin/

# Installing firefox
cd $MOZILLA
sh $FIREFOX_INSTALL
if [ $? -eq 1 ]; then
    exit_with_error
else
    cp *.svg *.css $HOME/.mozilla/firefox/*.default-release/chrome/
fi

# SSH
read -p "Do you want to set up an ssh key : [Y|y]es [N|n]o "
case $REPLY in
    y|Y) sh $SSH_INSTALL;;
    n|N) echo "Installation complete!";;
    *) echo "Invalid choice, finishing installation.";;

cd $DIR
exit 0

