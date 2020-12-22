# My dofiles

## Requirements

### CLI

```
fish oh-my-fish neovim neovim-plug git htop pulseaudio
```

### GUI

```
i3 i3-gaps i3lock-fancy picom Alacritty Dunst polybar rofi  
```
### Fonts

[Nerd Fonts](https://www.nerdfonts.com/font-downloads)

```
FiraCode Font-Awesome siji-git ttf-unifont IPAPMincho
```

## v3lock

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


## installing

```
git clone 
cd dotifles
mkdir ~/Images && mkdir ~/Images/Screenshots ~/Images/Wallpaper
cp * ~/ && cp -rf .config/* ~/.config
cp Scripts/* /bin/
cp Images/pink_anime_girl.jpg ~/Images/Wallpaper

```

## screenshots

![DesktopPreview](Images/desktop.png)
![LockPreview](Images/locked.png)
