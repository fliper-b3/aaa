#!/bin/bash
FILENAME="{{ backup_dir }}/aur.git.url.txt"
rm -f ${FILENAME}
cd ${HOME}/.build/ 
for FOLDER in $(ls); do
    cd ${FOLDER} 
    URL=$(git config --get remote.origin.url)
    echo ${URL} >> ${FILENAME}
    cd ${HOME}/.build/ 
done
