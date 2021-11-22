#!/bin/bash

(sleep 2; bash "$HOME"/.config/polybar/launch.sh) &

#starting utility applications at boot time
nm-applet &
thunar --daemon &
numlockx on &
<<<<<<< HEAD
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
/usr/bin/xfce4-clipman &
/usr/bin/flameshot &
/home/linux123123/.local/bin/hyperion-x11 -a 192.168.0.131:19400 &
=======
polkit-dumb-agent & 
dunst &
parcellite &
flameshot &
/home/linux123123/.local/bin/hyperion-x11 -a 192.168.0.131:19400 -s 25 &
>>>>>>> f072382 (Update)
nitrogen --restore &

eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
