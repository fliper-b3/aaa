#!/bin/bash

cd $(dirname $0)
/usr/bin/python3.9 -m venv .venv
/usr/bin/source .venv/bin/activate
pip install ansible
${HOME}/.venv/bin/ansible-playbook -c local -i 127.0.0.1, --extra-vars=user_name=ivan soft.yml