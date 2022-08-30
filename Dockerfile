FROM rundqvist/openvpn:1.2

LABEL maintainer="mattias.rundqvist@icloud.com"

ENV HOME="/home"
WORKDIR /app

RUN apk add --update qbittorrent-nox

COPY root /
