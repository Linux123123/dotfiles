#!/bin/bash

(sleep 2; bash "$HOME"/.config/polybar/launch.sh) &

#cursor active at boot
xsetroot -cursor_name left_ptr &

#starting utility applications at boot time
nm-applet &
thunar --daemon &
blueman-applet &
numlockx on &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/usr/bin/xfce4-clipman &
/usr/bin/flameshot &
/home/linux123123/.local/bin/hyperion-x11 -a 192.168.0.130:19400 &
nitrogen --restore &
