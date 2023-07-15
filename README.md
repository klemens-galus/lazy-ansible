# Welcome to lazy-ansible !

## Quick reference

-   **Maintained by**  
    [Me : Klemens](https://gitlab.com/Klemens_Galus)
You need a ssh folder with your ssh key.s ans a config file 

## Supported release tags  
- [`8.1.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/8.1.0/alpine-3.18.2/Dockerfile), [`8.1.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/8.1.0/ubuntu-22.04/Dockerfile)  
- [`7.7.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/7.7.0/alpine-3.18.2/Dockerfile), [`7.7.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/7.7.0/ubuntu-22.04/Dockerfile)  
- [`7.6.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/7.6.0/alpine-3.18.2/Dockerfile), [`7.6.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/7.6.0/ubuntu-22.04/Dockerfile)  
- [`7.5.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/7.5.0/alpine-3.18.2/Dockerfile), [`7.5.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/7.5.0/ubuntu-22.04/Dockerfile)  
- [`7.0.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/7.0.0/alpine-3.18.2/Dockerfile), [`7.0.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/7.0.0/ubuntu-22.04/Dockerfile)  
- [`6.7.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.7.0/alpine-3.18.2/Dockerfile), [`6.7.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.7.0/ubuntu-22.04/Dockerfile)  
- [`6.6.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.6.0/alpine-3.18.2/Dockerfile), [`6.6.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.6.0/ubuntu-22.04/Dockerfile)  
- [`6.5.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.5.0/alpine-3.18.2/Dockerfile), [`6.5.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.5.0/ubuntu-22.04/Dockerfile)  
- [`6.4.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.4.0/alpine-3.18.2/Dockerfile), [`6.4.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.4.0/ubuntu-22.04/Dockerfile)  
- [`6.3.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.3.0/alpine-3.18.2/Dockerfile), [`6.3.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.3.0/ubuntu-22.04/Dockerfile)  
- [`6.2.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.2.0/alpine-3.18.2/Dockerfile), [`6.2.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.2.0/ubuntu-22.04/Dockerfile)  
- [`6.1.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.1.0/alpine-3.18.2/Dockerfile), [`6.1.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.1.0/ubuntu-22.04/Dockerfile)  
- [`6.0.0-alpine3.18.2`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.0.0/alpine-3.18.2/Dockerfile), [`6.0.0-ubuntu22.04`](https://gitlab.com/lazy-devops/lazy-ansible/-/tree/ansibleV/6.0.0/ubuntu-22.04/Dockerfile) 


## Supported beta tags
**No beta for the moment**  

## Quick reference (cont.)

**An issue ?**  
[https://github.com/klemens-galus/lazy-ansible/issues](https://github.com/klemens-galus/lazy-ansible/issues)

## What is lazy-ansible
First of all ansible is a way to automate application deployement and configuration management [here](https://www.ansible.com/).

Lazy-ansible is a fast way to run ansible without installing it !

## How to run it !

```
docker run -it -v <ssh folder>:/home/ansible/.ssh -v <ansible project folder>:/home/ansible/lazy-ansible docker.io/klemensgalus/lazy-ansible:<tag> bash
```

### SSH folder
Your ssh folder need to look at this 
--
  |-config
  |-publickey.pub
  |-privatekey

In your config 
```
Host *
  IdentityFile ~/.ssh/privatekey
```

You need to respect the `~/.ssh/`