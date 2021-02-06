#!/bin/bash

FILENAME="/home/ivan/aaa/soft.list.txt"
PACKAGELIST="$(pacman -Q | cut -d ' ' -f 1)"

echo "Prepare save installed packeges to file $FILENAME"
echo "$PACKAGELIST" > "$FILENAME"
echo "Saved installed packeges to file $FILENAME"

