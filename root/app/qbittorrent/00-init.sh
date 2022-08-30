#!/bin/sh

mkdir -p /downloads/temp
mkdir -p /downloads/finished
mkdir -p /config

mkdir -p /home/.config/
ln -s /config /home/.config/qBittorrent

if [ ! -e /config/qBittorrent.conf ]
then
  log -i "First run. Set default config."
  cp -f /app/qbittorrent/qBittorrent.conf /config > /dev/null
fi
