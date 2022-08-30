#!/bin/sh

mkdir -p /downloads/temp
mkdir -p /downloads/finished
mkdir -p /config/.config/qBittorrent/

SP=$(cat /config/.config/qBittorrent/qBittorrent.conf | grep SavePath)
if [ -z "$SP" ]
then
  cp -f /app/qbittorrent/qBittorrent.conf /config/.config/qBittorrent/ > /dev/null
fi
#cp /app/qbittorrent/qBittorrent.conf /config/.config/qBittorrent/ > /dev/null