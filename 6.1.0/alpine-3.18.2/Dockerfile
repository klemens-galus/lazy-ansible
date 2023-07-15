ARG variant

FROM alpine:$variant

RUN apk update && \
    apk add --no-cache python3 py3-pip curl sudo && \
    apk add bash && \
    apk add openssh

# CREATE THE USER ANSIBLE W/ PASSWORD
RUN adduser -D ansible -G wheel

ARG ANSIBLE_VERSION

RUN cd /home/ansible && \
    su -c "curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py" ansible && \
    su -c "python3 get-pip.py --user" ansible && \
    su -c "python3 -m pip install --user ansible==$ANSIBLE_VERSION" ansible && \
    mv /home/ansible/.local/bin/ansible /usr/local/bin

# CREATE THE USER ANSIBLE TO THE SUDOER W/ PASSWORD
RUN echo 'ansible ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN mkdir /home/ansible/.ssh

VOLUME /home/ansible/
VOLUME /home/ansible/.ssh

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

# SOMETIMES SOME '\r' NEED TO BE REMOVED
RUN sed -i 's/\r$//' /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

USER ansible

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["bash"]