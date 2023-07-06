FROM ubuntu:23.10

RUN mkdir /root/.ssh

VOLUME /root/lazy-ansible
VOLUME /root/.ssh

RUN apt update && \
    apt install -y ansible 

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["bash"]


    