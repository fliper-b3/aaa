# aaa
Arch Ansible Autoroleout

pacman -Sy git sshpass
git clone https://github.com/fliper-b3/aaa.git
mkfs.ex4 /dev/{dev-name}
mount /dev/{} /mnt
cd /mnt
python3.9 -m venv .venv
source .venv/bin/activate
pip install ansible-playbook playbook.yaml, site.yaml