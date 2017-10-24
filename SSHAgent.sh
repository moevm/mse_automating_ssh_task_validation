# This script provides the ability to configure a virtual machine in order
# to prepare it for this challenge. It runs for every virtual machine created
# prior to assigning it to a user. The execution time is limited to 5 minutes.
#Необходимо добавить запрет на использование комманды cp,перемещение, echo и touch
#права на history и keygen
sudo sh -c $'echo "export PROMPT_COMMAND=\'history -a;history -r\'" > /.box/bashrc.d/box/rules' 
sudo sh -c $'echo "alias ssh-add=\'ssh-add;ssh-add -l > /home/box/.keygen\'" >> /.box/bashrc.d/box/rules' 
PROMPT_COMMAND="history -a"
sudo chsh -s /bin/bash box
sudo useradd diana
echo "diana:diana" | sudo chpasswd diana
echo "box:box" | sudo chpasswd box
sudo chsh -s /bin/bash diana
sudo chmod 777 /home
sudo -S -u diana mkdir /home/diana
sudo -S -u diana chmod 700 /home/diana
sudo chmod 755 /home
