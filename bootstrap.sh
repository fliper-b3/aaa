#!/bin/bash
AAA='https://github.com/fliper-b3/aaa'
/usr/bin/git clone ${AAA} ${HOEM}/aaa
[ $? -ne 0 ] && echo "Can't download main repo ${AAA}" && echo 1
/usr/bin/python3.9 --version > echo "/usr/bin/python3.9 not found" && exit 1
/usr/bin/python3.9 -m venv ${HOEM}/aaa/.venv
${HOME}/aaa/.venv/pip install ansible
${HOME}/.venv/bin/ansible-playbook -c local -i 127.0.0.1, --extra-vars=user_name=ivan ${HOME}/aaa/soft.yml