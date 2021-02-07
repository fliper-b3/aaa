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
# TODO
# activate service for backup. Templated templated every think!
# parse files for pacman and makepkg https://stackoverflow.com/questions/33541870/how-do-i-loop-over-each-line-inside-a-file-with-ansible
# hosts: all - it's very ugly idea or not transport local like varian
# - dconf dump / > backup.dconf -> git add backup.dconf -> git commit -m -tag `date`-> git push
# pacman -Q| cut -d " " -f 1 > installed.txt && pacman -S --noconfirm $(cat installed.txt)
# bash cd ${HOME}/.build/ && \
# for folder in $(ls); do
# cd ${folder} && URL=$(git config --get remote.origin.url)
# echo "\"${folder}\": \"${URL}\"" > git_soft.txt