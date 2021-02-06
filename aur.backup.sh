#!/bin/bash
FILENAME="/home/ivan/aaa/git_soft.txt"
rm -f ${FILENAME}
cd ${HOME}/.build/ 
for FOLDER in $(ls); do
    cd ${FOLDER} 
    URL=$(git config --get remote.origin.url)
    echo ${URL} >> ${FILENAME}
    cd ${HOME}/.build/ 
done
