#!bin/bash

sudo chmod 700 /home/ansible/.ssh
sudo chown ansible:wheel /home/ansible/.ssh
sudo chmod 600 /home/ansible/.ssh/*
sudo chown ansible:wheel /home/ansible/.ssh/*

cd ~/lazy-ansible    

exec "/bin/bash"

