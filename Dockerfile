FROM ubuntu:latest

RUN useradd -rm -d /home/vscode -s /bin/bash -G sudo vscode && \
    echo "vscode:password" | chpasswd && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    chown -R vscode:vscode /home/vscode && \
    usermod -aG sudo vscode

ENV HOME=/home/vscode

USER vscode
