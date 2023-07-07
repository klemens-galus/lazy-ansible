FROM ubuntu:22.04

RUN apt update && \
    apt install -y ansible && \
    apt-get -y install sudo

#CREATE THE USER ANSIBLE W/ PASSWORD
RUN adduser --disabled-password \
--gecos '' ansible

RUN adduser ansible sudo

#CREATE THE USER ANSIBLE TO THE SUDOER W/ PASSWORD
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> \
/etc/sudoers

RUN mkdir /home/ansible/.ssh

VOLUME /home/ansible/
VOLUME /home/ansible/.ssh


COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

#SOMETIME SOMES '\r' NEED TO BE REMOVED 
RUN sed -i 's/\r$//' /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

USER ansible

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["bash"]


