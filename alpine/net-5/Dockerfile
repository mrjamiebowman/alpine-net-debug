FROM mcr.microsoft.com/dotnet/aspnet:5.0.3-alpine3.13-amd64 AS base
LABEL maintainer="mrjamiebowman"

# env variable for dotnet library
ENV DOTNETAPP ""
RUN mkdir -p /netdebugger/    
COPY config/start-debugger.sh /netdebugger/
RUN chmod +x /netdebugger/start-debugger.sh

# install vsdbg
RUN apk update \
    && apk add zip unzip curl \
    && rm -rf /var/lib/apt/lists/* \
    && curl -sSL https://aka.ms/getvsdbgsh | \
       sh /dev/stdin -v latest -l /vsdbg

# install ssh server
RUN apk add openssh-server \
     && mkdir -p /run/sshd \
     && ssh-keygen -A

# set password to 'Docker#!'. Change as needed.  
RUN echo "root:Docker#!" | chpasswd

# copy settings file. See elsewhere to find them. 
COPY config/sshd_config /etc/ssh/sshd_config
COPY config/authorized_keys  root/.ssh/authorized_keys

# expost ssh server
EXPOSE 2222

CMD /netdebugger/start-debugger.sh