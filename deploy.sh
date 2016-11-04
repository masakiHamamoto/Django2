#!/bin/bash

echo "Start the ssh agent"
eval "$(ssh-agent -s)" 
echo "$DEPLOY_KEY" > deploy_key.pem
echo "This key should have push access"
chmod 600 deploy_key.pem
ssh-add deploy_key.pem
which expect
expect "Enter passphrase for"
#git remote add deploy $REPO_URI
#git push deploy master