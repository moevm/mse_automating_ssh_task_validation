# This is a sample Linux Challenge test scenario
# Learn more: https://stepik.org/lesson/9180

commandSSH = 'ssh'
commandExit = 'exit'
userName = 'box'
cheat = 'bash_history'

def test_connection(s):
    assert s.run('true').succeeded, "Could not connect to server"

def test_ssh_command(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert commandSSH in file_content, "You was not used ssh command"
    
def test_user_denied(s):
    s.run('sudo touch /home/box/auth.log')
    s.run('sudo last > /home/box/auth.log')
    file_content = s.run('cat /home/box/auth.log')
    s.run('sudo rm /home/box/auth.log')
    assert userName in file_content, "You are have problems with authorized with ssh."

def test_exit_command(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert commandExit in file_content, "You was not used exit command"
    
def test_cheat_denied(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert not(cheat in file_content), "It's terrible. Cheating is so bad, please, try again.Just use ssh name@host"
