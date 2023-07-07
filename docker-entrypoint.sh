#!bin/bash

cd ~/lazy-ansible    

sudo chmod 700 /home/ansible/.ssh
sudo chown ansible:ansible /home/ansible/.ssh
sudo chmod 600 /home/ansible/.ssh/*
sudo chown ansible:ansible /home/ansible/.ssh/*


exec "$@"