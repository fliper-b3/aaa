#!/bin/bash

FILENAME="{{ backup_dir }}/pacman.installed.txt"
PACKAGELIST="$(/usr/bin/pacman -Q | /usr/bin/cut -d ' ' -f 1)"

echo "Prepare save installed packeges to file $FILENAME"
echo "$PACKAGELIST" > "$FILENAME"
echo "Saved installed packeges to file $FILENAME"

