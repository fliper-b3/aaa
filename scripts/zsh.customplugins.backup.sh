#!/bin/bash
set -e
cd "$(dirname "$0")"
cd ..
FILENAME="$(pwd)/.backup/zsh.customplugins.url.txt"
rm -f ${FILENAME}
cd ${HOME}/.oh-my-zsh/custom/plugins
for FOLDER in `ls`; do
    [ ${FOLDER} == "example" ] && continue
    pushd ${FOLDER} > /dev/null 
    URL=$(git config --get remote.origin.url)
    echo "- name: \"${FOLDER}\"" >> ${FILENAME}
    echo "  url: \"${URL}\"" >> ${FILENAME}
    popd > /dev/null
done
