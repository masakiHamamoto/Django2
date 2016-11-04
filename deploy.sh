#!/bin/bash

echo "Install expect"
#sudo apt-get -y install expect
which expect
which send
echo "Start the ssh agent"
eval "$(ssh-agent -s)" 
echo "$DEPLOY_KEY" > deploy_key.pem
echo "This key should have push access"
chmod 600 deploy_key.pem
ssh-add deploy_key.pem
expect --help
expect \"Enter passphrase for deploy_key.pem: \"
send \"test\n\"
#git remote add deploy $REPO_URI
#git push deploy master