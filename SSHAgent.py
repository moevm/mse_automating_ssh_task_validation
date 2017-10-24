# This is a sample Linux Challenge test scenario
# Learn more: https://stepik.org/lesson/9180
userName = 'diana'
cheat = 'bash_history'
fileNameDima = 'authorized_keys'
fileNameBox = 'id_rsa.pub'
addressSSHKey = '/home/box/.ssh/id_rsa'
commandOne = 'ssh-keygen'
commandTwo = 'ssh-copy-id'
commandThree = 'ssh-agent'
commandFour = 'ssh-add'

def test_connection(s):
    assert s.run('true').succeeded, "Could not connect to server"
    
def test_history_content_one(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert commandOne in file_content, "You was not enter necessary commands. You wasn't gen key"

def test_history_content_two(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert commandTwo in file_content, "You was not enter necessary commands. You need to use ssh-copy-id"

def test_history_content_three(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert commandThree in file_content, "You was not enter necessary commands. You need to use ssh-agent"
    
def test_history_content_four(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert commandFour in file_content, "You was not enter necessary commands. You need to use ssh-add"

def test_file_exist_box(s):
    s.run('sudo ls -al /home/box/.ssh > /home/box/file_exist.txt')
    file_content = s.run('cat /home/box/file_exist.txt')
    s.run('sudo rm /home/box/file_exist.txt')
    assert fileNameBox in file_content, "You shall not pass.Necessary file in 'box' not exist."
    
def test_file_exist_diana(s):
    s.run('sudo ls -al /home/'+userName+'/.ssh > /home/box/file_exist.txt')
    file_content = s.run('cat /home/box/file_exist.txt')
    s.run('sudo rm /home/box/file_exist.txt')
    assert fileNameDima in file_content, "You shall not pass.Necessary file in 'diana' not exist."

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
    
def test_save_key(s):
    file_content = s.run('cat /home/box/.keygen')
    assert addressSSHKey in file_content, "you wasn't use ssh-add."

def test_cheat_denied(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert not(cheat in file_content), "It's terrible. Cheating is so bad, please, try again.Just use ssh name@host"
    
   
