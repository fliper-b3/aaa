#!/bin/bash
AAA='https://github.com/fliper-b3/aaa'
if [ -d ${HOME}/aaa ]; then 
   pushd ${HOME}/aaa
   /usr/bin/git pull
   [ $? -ne 0 ] && echo "Can't pull repo ${AAA}" && exit 1
   popd > /dev/null
else
   /usr/bin/git clone ${AAA} ${HOME}/aaa 
   [ $? -ne 0 ] && echo "Can't download main repo ${AAA}" && exit 1
fi
/usr/bin/python3.9 --version > /dev/null || ( echo "/usr/bin/python3.9 not found" && exit 1 )
/usr/bin/python3.9 -m venv ${HOME}/aaa/.venv
${HOME}/aaa/.venv/bin/pip install ansible
${HOME}/aaa/.venv/bin/ansible-playbook -c local -i 127.0.0.1, --extra-vars=user_name=ivan ${HOME}/aaa/soft.yml