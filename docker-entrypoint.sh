#!bin/bash

chmod 700 ~/.ssh
chown root:root ~/.ssh
chmod 600 ~/.ssh/*
chown root:root ~/.ssh/*

cd ~/lazy-ansible

exec "$@"