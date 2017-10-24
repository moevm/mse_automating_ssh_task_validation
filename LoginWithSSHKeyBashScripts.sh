# This script provides the ability to configure a virtual machine in order
# to prepare it for this challenge. It runs for every virtual machine created
# prior to assigning it to a user. The execution time is limited to 5 minutes.
#Необходимо добавить запрет на использование комманды cp,перемещение, echo и touch
sudo sh -c 'echo HISTFILE=/home/box/.bash_history >> /.box/bashrc.d/box/rules' 
sudo sh -c $'echo "export PROMPT_COMMAND=\'history -a;history -r\'" > /.box/bashrc.d/box/rules' 
PROMPT_COMMAND="history -a"
sudo chsh -s /bin/bash box
sudo useradd dima
echo "dima:guba" | sudo chpasswd dima
echo "box:box" | sudo chpasswd box
sudo chsh -s /bin/bash dima
sudo chmod 777 /home
sudo -S -u dima mkdir /home/dima
sudo -S -u dima chmod 700 /home/dima
sudo chmod 755 /home

