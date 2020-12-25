#!/bin/bash

isPackageInstalled() {
  pacman -Qi "yay" &> /dev/null
  echo $?
}

DIR=$PWD

# INSTALLATION PROCESS
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si
cd "$DIR"

# TEST IF INSTALLED
echo "Verifying installation..."
if [ $(isPackageInstalled) ]; then
    echo "Installation sucsessful!"
    yay --version
    exit 0
else
    echo "[!!] A problem has occured duing installation." >&2
    exit 1
fi

