# lazy ansible

You need a ssh folder with your ssh key.s ans a config file 

```
podman run -it -v <ssh folder>:/home/ansible/.ssh -v <ansible project folder>:/home/ansible/lazy-ansible lazy-ansible bash
```