# This is a sample Linux Challenge test scenario
# Learn more: https://stepik.org/lesson/9180

import re

userName = 'nikita'
cheat = 'bash_history'
fileNameDima = 'authorized_keys'
fileNameBox = 'id_rsa.pub'
commandOne = 'ssh-keygen'
commandTwo = 'ssh-copy-id'

def test_connection(s):
    assert s.run('true').succeeded, "Could not connect to server"
    
def test_history_content_one(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert commandOne in file_content, "You was not enter necessary commands. You wasn't gen key"

def test_history_content_two(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert commandTwo in file_content, "You was not enter necessary commands. You need to ssh-copy-id"

def test_file_exist_box(s):
    s.run('sudo ls -al /home/box/.ssh > /home/box/file_exist.txt')
    file_content = s.run('cat /home/box/file_exist.txt')
    s.run('sudo rm /home/box/file_exist.txt')
    assert fileNameBox in file_content, "You shall not pass.Necessary file in 'box' not exist."
    
def test_file_exist_nikita(s):
    s.run('sudo ls -al /home/'+userName+'/.ssh > /home/box/file_exist.txt')
    file_content = s.run('cat /home/box/file_exist.txt')
    s.run('sudo rm /home/box/file_exist.txt')
    assert fileNameDima in file_content, "You shall not pass.Necessary file in 'nikita' not exist."

def test_file_content(s):
    first_file_content = s.run('sudo cat /home/box/.ssh/'+fileNameBox)
    second_file_content = s.run('sudo cat /home/'+userName+'/.ssh/'+fileNameDima)
    assert first_file_content == second_file_content, "keys not equals."  

def test_user_denied(s):
    s.run('sudo touch /home/box/auth.log')
    s.run('sudo last > /home/box/auth.log')
    file_content = s.run('cat /home/box/auth.log')
    s.run('sudo rm /home/box/auth.log')
    assert userName in file_content, "you wasn't log with key."
    
def test_mod_ssh_file(s):
    s.run('sudo ls -al /home/box > /home/box/file_exist.txt')
    file_content = s.run('cat /home/box/file_exist.txt')#
    s.run('sudo rm /home/box/file_exist.txt')
    assert len(re.findall(r'drwx------.{25,35}\.ssh', file_content))!=0, "You shall not pass.Wrong mod .ssh"
    
def test_mod_id_rsa(s):
    s.run('ls -al /home/box/.ssh | sudo tee /home/box/file_exist.txt')
    file_content = s.run('cat /home/box/file_exist.txt')
    s.run('sudo rm /home/box/file_exist.txt')
    assert re.findall(r"-r.-------.{25,35}id_rsa", file_content), "wrond mod id_rsa"
    
def test_cheat_denied(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert not(cheat in file_content), "It's terrible. Cheating is so bad, please, try again.Just use ssh name@host"
    
   
