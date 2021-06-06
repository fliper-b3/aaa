#!/bin/bash
set -e
cd "$(dirname "$0")"
cd ..
FILENAME="$(pwd)/.backup/aur.git.url.txt"
rm -f ${FILENAME}
cd ${HOME}/.build
pwd
for FOLDER in `ls`; do
    echo $FOLDER
    pushd ${FOLDER} > /dev/null 
    URL=$(git config --get remote.origin.url)
    popd > /dev/null
    echo ${URL} >> ${FILENAME}
done
