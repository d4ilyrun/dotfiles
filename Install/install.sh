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
cp -iv -r .config/* $HOME/.config/

# Wallpaper
cp -vi -r Images/Wallpaper $HOME/Images/Wallpaper
feh --bg-scale $HOME/Images/Wallpaper/30*

# Installing scripts
sudo cp -vi Scripts/v3lock/v3lock /bin/

# Installing rofi themes
cd $HOME/.config/rofi
sh install.sh

# Setting up fish
curl -L http://get.oh-my.fish | fish
omf install bobthefish
chsh -s /usr/bin/fish # default terminal

# SSH
clear
read -p "Do you want to set up an ssh key : [Y|y]es [N|n]o "response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    sh $SSH_INSTALL
fi

cat <<EOF
INSTALLATION COMPLETE!

[!] Run ':PlugInstall' in vim to load all required plugins.

A custom version of firefox is available inside the '.dotfiles' directory.
For further information please refer to the README file inside the directory.

If you spotted any error please file an issue on the github repository :)
EOF

cd $DIR
exit 0

