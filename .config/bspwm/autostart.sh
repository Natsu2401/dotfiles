#!/bin/bash

sh ~/.fehbg

arr=("sxhkd" "xfce4-power-manager" "copyq" "fcitx5" "dunst" "xdman" "qv2ray" "compton" "redshift-gtk" "mpd" "conky" "~/.config/polybar/launch.sh")

for value in ${arr[@]}
do
    isExist=`ps -ef | grep "$value" | grep -v grep | wc -l`
    if [ $isExist == 0 ]
    then
        exec "$value" &
    fi
done

setxkbmap -option ctrl:nocaps,shift:both_capslock
xcape

mechvibes &
ibus-daemon -drxR
