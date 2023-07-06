FROM ubuntu:23.10

RUN useradd -m ansible

RUN mkdir /home/ansible/.ssh

VOLUME /home/ansible/lazy-ansible
VOLUME /home/ansible/.ssh

RUN apt update && \
    apt install -y ansible 

COPY ./docker-entrypoint.sh /usr/bin/docker-entrypoint.sh

RUN chmod +x /usr/bin/docker-entrypoint.sh

RUN touch /home/ansible/welcomeToLazyAnsible.md

ENTRYPOINT ["docker-entrypoint.sh"]

USER ansible

CMD ["bash"]


    