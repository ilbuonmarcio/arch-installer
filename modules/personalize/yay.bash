#!/bin/bash

# IMPORTS:
#   out
#   USER

out "[.] Installing yay."

pacman -Sy --needed --noconfirm base-devel git

git clone https://aur.archlinux.org/yay-bin.git

cd yay-bin

chown -R $USER .
sudo -u $USER makepkg -si --noconfirm

cd ..
rm -r yay-bin

out "[+] yay installed."
