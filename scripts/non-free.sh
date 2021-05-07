#!/bin/bash
#
# Writes sources.list in order to add non-free repository

echo "# deb http://http.debian.net/debian $DEBIAN_RELEASE main" > /etc/apt/sources.list
echo "" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ bullseye main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ bullseye main contrib non-free" >> /etc/apt/sources.list
echo "" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ bullseye-updates main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ bullseye-updates main contrib non-free" >> /etc/apt/sources.list
echo "" >> /etc/apt/sources.list
echo "# $DEBIAN_RELEASE-updates, previously known as "volatile"" >> /etc/apt/sources.list
echo "deb http://deb.debian.org/debian-security bullseye-security main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian-security bullseye-security main contrib non-free" >> /etc/apt/sources.list
