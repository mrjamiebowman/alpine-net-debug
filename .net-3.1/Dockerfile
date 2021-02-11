FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine AS base

# install vsdbg
RUN apk update \
    && apk add unzip curl \
    && rm -rf /var/lib/apt/lists/* \
    && curl -sSL https://aka.ms/getvsdbgsh | \
       sh /dev/stdin -v latest -l /vsdbg

# install ssh server
