# mse_automating_ssh_task_validation
# Login_with_SSH_Task:
Необходимо осуществить вход в удаленную систему Linux и выйти из нее. имя пользователя box, пароль box. Подключаемся по localhost. Использовать команды ssh и exit 
# Copy_file_from_remote_computer: 
Необходимо скопировать текстовый документ c удаленного сервера на ваш компьютер в папку /home/box, который расположен в папке /home/erdos. Используйте SCP. Имя пользователя удаленной системы erdos, пароль erdos. Cервер localhost. Файл block_and_anton.txt.  
# Login_with_SSH_Key_Task:
Пользователя сильно раздражает необходимость вводить пароль при каждом SSH соединении. Поэтому необходимо авторизоваться с помощью public и private ключей.Используйте ssh-keygen и ssh-copy-id. Пользователь dima, Сервер localhost. 
# SSH_Agent:
Необходимо подключиться по ssh, к удаленному пользователю diana по серверу localhost, без ввода пароля или ключевой фразы. Пароль - diana. Используйте ssh-agent(ssh-agent bash, т.к. мы используем bash оболочку)  и ssh-add, кроме того, уже известные нам команды  - ssh-keygen и ssh-copy-id.
