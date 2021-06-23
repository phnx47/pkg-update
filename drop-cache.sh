#!/bin/sh

sudo paccache -rk3
paru -Sc --aur --noconfirm

echo "Pacman/AUR packages Cache Dropped!"
