#!/bin/bash

DIR=$PWD

cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R tecmint:tecmint ./yay-git
cd yay-git
makepkg -si

# TEST IF INSTALLED
isPackageInstalled() {
  pacman -Qi "yay" &> /dev/null
  echo $?
}

echo "Verifying installation..."
if [ $(isPackageInstalled) ]; then
    echo "Installation sucsessful!"
    yay --version
else
    echo "A problem has occured duing installation."
fi

cd "$DIR"
