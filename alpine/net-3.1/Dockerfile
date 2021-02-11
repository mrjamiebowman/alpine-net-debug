FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine AS base
LABEL maintainer="mrjamiebowman"

# install vsdbg
RUN apk update \
    && apk add zip unzip curl \
    && rm -rf /var/lib/apt/lists/* \
    && curl -sSL https://aka.ms/getvsdbgsh | \
       sh /dev/stdin -v latest -l /vsdbg

# install ssh server
RUN apk add openssh-server \
     && mkdir -p /run/sshd

# set password to 'Docker#!'. Change as needed.  
RUN echo "root:Docker#!" | chpasswd

# copy settings file. See elsewhere to find them. 
COPY ../config/sshd_config /etc/ssh/sshd_config
COPY ../config/authorized_keys  root/.ssh/authorized_keys

# expost ssh server
EXPOSE 2222