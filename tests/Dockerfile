FROM ubuntu:18.04

#RUN sed -i "s|deb http://security.ubuntu.com/ubuntu/ bionic-security main restricted||" /etc/apt/sources.list
RUN apt clean && apt autoclean && apt update -y && apt install -y openssh-client openssh-server sudo git vim net-tools
RUN mkdir /run/sshd
RUN groupadd admin && \
    echo "%admin ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/admin

RUN user=ubuntu;useradd -s /bin/bash $user; mkdir -p /home/$user/.ssh; chmod 700 /home/$user/.ssh; touch /home/$user/.ssh/authorized_keys; chmod 600 /home/$user/.ssh/authorized_keys; chown -R $user:$user /home/$user/ && \
    usermod -G admin ubuntu

RUN systemctl enable ssh.service

#add-apt-repository -r bionic-updates/main
