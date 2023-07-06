# lazy ansible

You need a ssh folder with your ssh key.s ans a config file 

```
docker run -it -v <ssh folder>:/root/.ssh -v <ansible project folder>:/root/lazy-ansible test bash
```

