#!/bin/bash

# IMPORTS:
#   out
#   USER

out "[.] Installing Xorg."

pacman --sync --needed --noconfirm xorg-server xorg-setxkbmap xautolock xorg-xrandr

echo setxkbmap -layout it > /home/$USER/.xprofile
echo >> /home/$USER/.xprofile
echo /usr/lib/mate-polkit/polkit-mate-authentication-agent-1 \& >> /home/$USER/.xprofile
echo >> /home/$USER/.xprofile
echo xautolock -time 10 -locker slock \& >> /home/$USER/.xprofile

chown $USER /home/$USER/.xprofile

out "[+] Xorg installed."
