FROM ubuntu:24.04

ARG USERNAME=developer
ARG USER_PASSWORD=password

ENV DEBIAN_FRONTEND=noninteractive

# this TODAY_WISDOM is available inside the running container when you echo $TODAY_WISDOM
ENV TODAY_WISDOM="do it well + steer attention + compassion = My Framework"


RUN apt-get update && \
    apt-get install -y \
    sudo \
    git \
    curl \
    wget \
    vim \
    less \
    tree \
    procps \
    iproute2 \
    iputils-ping \
    dnsutils \
    net-tools \
    fish \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y \
    openssh-server && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/sshd 

RUN useradd \
    --create-home \
    --shell /bin/bash \
    "$USERNAME"

RUN echo "${USERNAME}:${USER_PASSWORD}" | chpasswd

RUN usermod -aG sudo "$USERNAME"

# USER $USERNAME

WORKDIR /home/$USERNAME

CMD ["/usr/sbin/sshd" , "-D"]