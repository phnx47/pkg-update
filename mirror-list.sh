#!/bin/sh

export TMPFILE="$(mktemp)"
rate-arch-mirrors --max-delay=10800 --entry-country SG  --protocol https --save=$TMPFILE && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup && sudo mv $TMPFILE /etc/pacman.d/mirrorlist

echo "Mirrorlist update finished!!"
