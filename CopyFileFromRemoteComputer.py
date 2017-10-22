# This is a sample Linux Challenge test scenario
# Learn more: https://stepik.org/lesson/9180
userName = 'erdos'
cheat = 'bash_history'
fileName = 'block_and_anton.txt'
command = 'scp'

def test_connection(s):
    assert s.run('true').succeeded, "Could not connect to server"
    
def test_history_content(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert command in file_content, "You was not enter necessary commands"

def test_file_exist(s):
    s.run('sudo ls -al /home/box > /home/box/file_exist.txt')
    file_content = s.run('cat /home/box/file_exist.txt')
    s.run('sudo rm /home/box/file_exist.txt')
    assert fileName in file_content, "You shall not pass.Necessary file not exist."

def test_file_content(s):
    first_file_content = s.run('sudo cat /home/box/'+fileName)
    second_file_content = s.run('sudo cat /home/erdos/'+fileName)
    assert first_file_content == second_file_content, "files not equals."  

def test_user_denied(s):
    s.run('sudo touch /home/box/auth.log')
    s.run('sudo last > /home/box/auth.log')
    file_content = s.run('cat /home/box/auth.log')
    s.run('sudo rm /home/box/auth.log')
    assert not(userName in file_content), "You had to destroy the evil, and not join it.You shoudn't login with ssh."

def test_cheat_denied(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert not(cheat in file_content), "It's terrible. Cheating is so bad, please, try again.Just use ssh name@host"
    
   
