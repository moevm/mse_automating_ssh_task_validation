# This script provides the ability to configure a virtual machine in order
# to prepare it for this challenge. It runs for every virtual machine created
# prior to assigning it to a user. The execution time is limited to 5 minutes.
#Необходимо добавить запрет на использование комманды cp,перемещение, echo и touch
#права на history и keygen
sudo sh -c $'echo "export PROMPT_COMMAND=\'history -a;history -r\'" > /.box/bashrc.d/box/rules' 
sudo sh -c $'echo "alias ssh-add=\'ssh-add;ssh-add -l > /home/box/.keygen\'" >> /.box/bashrc.d/box/rules' 
PROMPT_COMMAND="history -a"
sudo chsh -s /bin/bash box
sudo useradd nikita
echo "nikita:nik" | sudo chpasswd nikita
echo "box:box" | sudo chpasswd box
sudo chsh -s /bin/bash nikita
sudo chmod 777 /home
sudo -S -u nikita mkdir /home/nikita
sudo -S -u nikita chmod 700 /home/nikita
sudo mkdir /home/box/.ssh
sudo -S -u nikita mkdir /home/nikita/.ssh
#поменять потом
sudo chmod 777 /home/box/.ssh
sudo -S -u nikita chmod 777 /home/nikita/.ssh
sudo echo "-----BEGIN RSA PRIVATE KEY-----" > /home/box/.ssh/id_rsa
sudo echo "MIIEowIBAAKCAQEAzYoZySDaQT6cRO1yiNyRLSZZONtX/DKm0rfx14izt+NEAi9g" >> /home/box/.ssh/id_rsa
sudo echo "9GvZ0zJsyW8OwS3llbKPsBpa87oBlzcNyUGuGdPd09LSSF7iLdhJsbvGU0ZTCuIY" >> /home/box/.ssh/id_rsa
sudo echo "7IW1KKRumlLWXgrMKN02k8cYPj3dEcAZEoAmZ5HnMwWCRjTFbDsOPD6XMsIYOWx+" >> /home/box/.ssh/id_rsa
sudo echo "L+zC9hJj5DPCYzsBAZ14nwk1duLtdsMDYG5TLLmdJo06zPOkOPxzlCeH1Dn1nV/e" >> /home/box/.ssh/id_rsa
sudo echo "EaDZyo8vfNwrZe8fweug2/5jw0wZkMTBIGZiYolN7jiJIr5kywlvi0SbTu77dAqc" >> /home/box/.ssh/id_rsa
sudo echo "CqHcGvgSFAkXS9kamkh90nItmogXqmBgQO1RTwIDAQABAoIBAQCx9M3ai+0r7C+U" >> /home/box/.ssh/id_rsa
sudo echo "phkyUfYIJ1m8lnyZSKmTa9uiByPDJKvvUGIbfX19E/2IcfVOYJSUhaNOj6MLvpI+" >> /home/box/.ssh/id_rsa
sudo echo "AFaZV5qLlhpLmg6ixjQCCW/UyIUv+IVRuOxnbGSrKaLxTqN3jNWy08S7MffVe+55" >> /home/box/.ssh/id_rsa
sudo echo "vd53XCjkJzkLvctLSclcqczrcC2srT2i4P1wnAk/9lQs8Y1bO+QH6qFPQIF1oYLd" >> /home/box/.ssh/id_rsa
sudo echo "WK1azaOpBlldTSfVp2PXUk2eNyZe3K12RcLRbx0EPJG03UBjY+T6ODfvPa9Xut0W" >> /home/box/.ssh/id_rsa
sudo echo "zufABnlkg7I4XUwd7yh9IooizbD4/08n4FqwZYNtuiASTWf+ea/4aV8HIRoRtho5" >> /home/box/.ssh/id_rsa
sudo echo "WZU5+3ixAoGBAPhJdyu4pX3ZIzq/31ppxFN1D63sPNkO4pC/0hhYZZzkoFeHtY/V" >> /home/box/.ssh/id_rsa
sudo echo "SY+WDCqa5Xjan1bNcpRKmI/+5BgczWpuqNVQ9XElOnwAhP2cG1X7hJ+HeX5Adx39" >> /home/box/.ssh/id_rsa
sudo echo "AecCS9LzKe+jsLCXv07e9FJVJe5Mq9H4VIRytdELlcTyesCTUqRwrhRlAoGBANPs" >> /home/box/.ssh/id_rsa
sudo echo "rhTtyKM8LL59ZBG56nfcfQC/nwiiIld33Hx2VJGd8kMx3aCKuHdNk9rsVU1zyKNB" >> /home/box/.ssh/id_rsa
sudo echo "pFtis9+O5fWmEKk7U7c+YXRkh1RLtJSnH+akSjMOU8V7bP6QgyMpbgCe0XvOZZaU" >> /home/box/.ssh/id_rsa
sudo echo "JWRba1N0tmKPmktF69aP/AiRjP1GiVtQv953AzGjAoGAV8K4AddBf8tJnZGGpFGw" >> /home/box/.ssh/id_rsa
sudo echo "WIOPKD3RgDO3t8xlub89I4jYeDf64D1WxA8Ye9LGe8JjAe6aqnn3lSZWf4NmxFEb" >> /home/box/.ssh/id_rsa
sudo echo "ElOMfhLXqk8QswgDzY+a4DyloA+vSwVML9hq7sSOtSrZ4IGy2HEMUTHRt3qYXR52" >> /home/box/.ssh/id_rsa
sudo echo "2V4mkB6VMMk4xGsOkhtWHNUCgYBF5UbZEj/dTqh3P0X07rudQrRbvdeG8mqfLKIk" >> /home/box/.ssh/id_rsa
sudo echo "zqY/zLctYFH3dCk49/Yu+0l7HRfseGbr2Rb4QdooddgC6NVIl6NuzwUvUTTC3ogP" >> /home/box/.ssh/id_rsa
sudo echo "+tmaEzyf4oBlSWZm/3APdlIjIkSxMDVQ7zHruY+53CEIeIw7HQwEC3VTx6Lf4jcV" >> /home/box/.ssh/id_rsa
sudo echo "+WytPwKBgDrYlviyb4HHh7tUEW5sAArlSzyKY9AFEEuiXaudTQTaq5S9lda+cW3O" >> /home/box/.ssh/id_rsa
sudo echo "HO123c3XxRks4tco6IDzkyjOVFh439/F61lxrfOcALHpWxq3hBSQ63z4opWIyP8H" >> /home/box/.ssh/id_rsa
sudo echo "F3+i3HJRep1+irz6x/H52stJEBNgx2aOFln8RHgJAp3xcHIZVzBf" >> /home/box/.ssh/id_rsa
sudo echo "-----END RSA PRIVATE KEY-----" >> /home/box/.ssh/id_rsa

sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNihnJINpBPpxE7XKI3JEtJlk421f8MqbSt/HXiLO340QCL2D0a9nTMmzJbw7BLeWVso+wGlrzugGXNw3JQa4Z093T0tJIXuIt2Emxu8ZTRlMK4hjshbUopG6aUtZeCswo3TaTxxg+Pd0RwBkSgCZnkeczBYJGNMVsOw48Ppcywhg5bH4v7ML2EmPkM8JjOwEBnXifCTV24u12wwNgblMsuZ0mjTrM86Q4/HOUJ4fUOfWdX94RoNnKjy983Ctl7x/B66Db/mPDTBmQxMEgZmJiiU3uOIkivmTLCW+LRJtO7vt0CpwKodwa+BIUCRdL2RqaSH3Sci2aiBeqYGBA7VFP box@localhost" > /home/box/.ssh/id_rsa.pub

sudo -S -u nikita echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNihnJINpBPpxE7XKI3JEtJlk421f8MqbSt/HXiLO340QCL2D0a9nTMmzJbw7BLeWVso+wGlrzugGXNw3JQa4Z093T0tJIXuIt2Emxu8ZTRlMK4hjshbUopG6aUtZeCswo3TaTxxg+Pd0RwBkSgCZnkeczBYJGNMVsOw48Ppcywhg5bH4v7ML2EmPkM8JjOwEBnXifCTV24u12wwNgblMsuZ0mjTrM86Q4/HOUJ4fUOfWdX94RoNnKjy983Ctl7x/B66Db/mPDTBmQxMEgZmJiiU3uOIkivmTLCW+LRJtO7vt0CpwKodwa+BIUCRdL2RqaSH3Sci2aiBeqYGBA7VFP box@localhost" > /home/nikita/.ssh/authorized_keys

sudo chmod 700 /home/box/.ssh
sudo chmod 600 /home/box/.ssh/id_rsa
sudo chmod 644 /home/box/.ssh/id_rsa.pub
sudo -S -u nikita chmod 600 home/nikita/.ssh/authorized_keys
sudo -S -u nikita chmod 700 home/nikita/.ssh

sudo chmod 755 /home


