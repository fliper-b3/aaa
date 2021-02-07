#!/bin/bash
set -e
FILENAME="{{ backup_dir }}/aur.git.url.txt"
rm -f ${FILENAME}
cd {{ build_dir }}/ 
for FOLDER in `ls`; do
    cd ${FOLDER} 
    URL=$(git config --get remote.origin.url)
    echo ${URL} >> ${FILENAME}
    cd {{ build_dir }}/ 
done
