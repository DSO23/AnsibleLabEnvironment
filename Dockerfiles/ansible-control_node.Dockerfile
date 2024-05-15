FROM ubuntu:latest

RUN apt update && \
    apt install -y openssh-client ansible sshpass iputils-ping curl vim less && \
    apt-get clean

ENTRYPOINT ["/bin/bash", "-c", "sleep infinity"]