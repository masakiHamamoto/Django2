#!/bin/bash

echo "Install expect"
expect --help
#sudo apt-get -y install expect
which expect
which send
echo "Start the ssh agent"
eval "$(ssh-agent -s)" 
echo "$DEPLOY_KEY" > deploy_key.pem
echo "This key should have push access"
chmod 600 deploy_key.pem
expect -c "
set timeout 5
spawn ssh-add deploy_key.pem
expect \"Enter passphrase for\"
send \"test\n\"
"
expect -c "
set timeout 5
spawn ssh ubuntu@ec2-54-229-175-87.eu-west-1.compute.amazonaws.com
expect \"Are you sure you want to continue connecting\"
send \"yes\n\"
interact
"
pwd
ls -l
#mkdir tmp
#git remote add deploy 
#git push deploy master