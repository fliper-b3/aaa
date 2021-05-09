#!/usr/bin/bash
set -e
cd "$(dirname $0)"
cd ..
if command -v code >/dev/null 2>&1; then
   /usr/bin/code --list-extensions > .backup/vsc-ext.txt 
fi