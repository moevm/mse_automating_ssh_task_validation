# This is a sample Linux Challenge test scenario
# Learn more: https://stepik.org/lesson/9180

command = 'ssh box@localhost'
userName = 'box'

def test_connection(s):
    assert s.run('true').succeeded, "Could not connect to server"

def test_file_content(s):
    file_content = s.run('cat /home/box/.bash_history')
    assert command in file_content, "You was not enter necessary command"
    
def test_user_denied(s):
    s.run('sudo touch /home/box/auth.log')
    s.run('sudo last > /home/box/auth.log')
    file_content = s.run('cat /home/box/auth.log')
    s.run('sudo rm /home/box/auth.log')
    assert userName in file_content, "You are have problems with authorized with ssh."

#def test_cheat_denied(s):
#    file_content = s.run('sudo history > /home/box/lol.txt')
#    assert ".bash" in file_content, "It's terrible. Cheating is so bad, please, try again.Just use ssh name@host"
