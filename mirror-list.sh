#!/bin/sh

export TMPFILE="$(mktemp)"
rate-mirrors --entry-country=SG --protocol=https --save=$TMPFILE arch --max-delay=10800 && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup && sudo mv $TMPFILE /etc/pacman.d/mirrorlist

echo "Mirrorlist update finished!!"
