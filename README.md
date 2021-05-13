# aaa
Arch Ansible Autoroleout

Install base.yml

You need to know:

- IP address of your laptoop
- disk name usualy nvme0n1
- important, after partiion between disk name and partition name could be a suffix, typicaly `p`

`ansible-playbook -i <YOUR LAPTOP IP ADDRESS>, --ask-pass --extra-vars=user_name=<YOUR USER NAME> --extra-vars=user_password=$(openssl passwd -crypt <YOUR PASSWORD>) --extra-vars=install_driver=/dev/<YOUR DISK NAME> --extra-vars=part_suffix=p -u root base.yml`

`./bootstarp.sh`