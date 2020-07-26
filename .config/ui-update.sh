#!/usr/bin/env bash 

~/.config/polybar/polybar.sh &
~/.config/dunst/dunst.sh

wal -i ~/wallpaper.jpg #automatically sets change wallpaper
exec --no-startup-id killall picom compton && picom -b #restart picom
exec --no-startup-id killall polybar && ~/.config/polybar/launch.sh #restart polybar
