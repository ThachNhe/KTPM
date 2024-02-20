FROM ubuntu:latest

RUN apt update && apt install -y openssh-server
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN  useradd -rm -d /home/thachdinh -s /bin/bash -g root -G sudo -u 1000 thachdinh && \
    echo 'thachdinh:010203' | chpasswd && \
    echo 'root:010203' | chpasswd

EXPOSE 22

ENTRYPOINT service ssh start && bash