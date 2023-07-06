#!bin/bash

cd /home/ansible/lazy-ansible

echo "Welcome to lazy-ansible v:$SOURCEREF" >> /home/ansible/welcomeToLazyAnsible.md 

exec "$@"