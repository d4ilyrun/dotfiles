#!/bin/bash

DIR=$PWD
SCRIPT=`readlink -f $0`
SCRIPTPATH=`dirname $SCRIPT`
DOT="$SCRIPTPATH/.."

cd $DOT
cd .config

# copy new dotfiles
for dir in `ls`;do
    sudo cd -rf ~/.config/$dir .
done

# remove potential '.git'
find . -name .git -exec rm {} +
