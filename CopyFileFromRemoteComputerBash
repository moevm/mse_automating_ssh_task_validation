# This script provides the ability to configure a virtual machine in order
# to prepare it for this challenge. It runs for every virtual machine created
# prior to assigning it to a user. The execution time is limited to 5 minutes.
sudo sh -c 'echo HISTFILE=/home/box/.bash_history >> /.box/bashrc.d/box/rules' 
sudo sh -c $'echo "export PROMPT_COMMAND=\'history -a;history -r\'" > /.box/bashrc.d/box/rules' 
PROMPT_COMMAND="history -a"
sudo chsh -s /bin/bash box
sudo useradd erdos
echo "erdos:erdos" | sudo chpasswd erdos
echo "box:box" | sudo chpasswd box
sudo chsh -s /bin/bash erdos
sudo chmod 777 /home
sudo -S -u erdos mkdir /home/erdos
sudo -S -u erdos chmod 700 /home/erdos
sudo -S -u erdos echo "Star wars, Harry Potter, Lord of the rings - cool." > /home/erdos/block_and_anton.txt
sudo -S -u erdos echo "And for uncheating - holly random:" > /home/erdos/block_and_anton.txt
sudo -S -u erdos echo $(( ( RANDOM % 5304 )  + 1 )) >> /home/erdos/block_and_anton.txt
sudo chmod 755 /home

