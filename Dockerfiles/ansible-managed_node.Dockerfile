FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y openssh-server python3 vim && \
    rm -rf /var/lib/apt/lists/* && mkdir -p /run/sshd && \
    apt-get clean

RUN echo 'root:password' | chpasswd

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

ENTRYPOINT ["/usr/sbin/sshd", "-D"]

