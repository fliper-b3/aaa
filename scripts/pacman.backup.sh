#!/bin/bash
PACKAGELIST=".backup/pacman.installed.txt"
PACKAGEIGNOR=".backup/pacman.installed.txt"
#FILENAME="{{ backup_dir }}/pacman.installed.txt"
#PACKAGELIST="$(/usr/bin/pacman -Q | /usr/bin/cut -d ' ' -f 1)"
#
#echo "Prepare save installed packeges to file $FILENAME"
#echo "$PACKAGELIST" > "$FILENAME"
#echo "Saved installed packeges to file $FILENAME"
#
cd "$(dirname $0)"
cd ..
for PAC in $(cat ${HOME}/.zsh_history | rg -o 'sudo pacman -S (.*)' | cut -d " " -f 4)
do
   pacman -Q --info ${PAC} > /dev/null 2>&1
   if [ $? -eq 0 ]; then
      grep ${PAC} ${PACKAGELIST} > /dev/null 2>&1
      if [ $? -eq 0 ]; then
         echo -n "."
      else 
         grep ${PAC} ${PACKAGEIGNOR} > /dev/null 2>&1
         [ $? -ne 0 ] && echo ${PAC} >> ${PACKAGELIST} 
      fi
   fi
done
echo "[OK]" 