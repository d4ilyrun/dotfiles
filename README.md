# dotfiles

My personal i3 config

## How to install

### Dependencies

  > yay -S picom dunst rofi libmpdclient polybar fish-git

### Installation

```bash
  git clone git@github.com:d4ilyrun/dotfiles.git && cd dotfiles
  cp .config/.* .config/* $HOME/.config && rm -rf .config/ .git
  cp * ~
```
## i3lock

Modified version of [this](https://github.com/veltall/custom-i3lock) script

```bash
#!/bin/bash

overlay=/usr/share/pixmaps/lockoverlay.png

rm -rf /tmp/currentworkspace.png
scrot /tmp/currentworkspace.png
convert /tmp/currentworkspace.png -blur 0x5 /tmp/currentworkspaceblur.png
composite -gravity southeast $overlay /tmp/currentworkspaceblur.png /tmp/lockbackground.png
i3lock -i /tmp/lockbackground.png
```

## Overview

![DesktopPreview](Preview.png)
