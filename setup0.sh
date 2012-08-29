#!/bin/bash

set -e

apt-get install vim git

# -- replace all instances of squeeze with unstable
SOURCES=/etc/apt/sources.list
cp $SOURCES $SOURCES.orig

echo "deb http://ftp.us.debian.org/debian/ unstable main contrib non-free" > $SOURCES
echo "deb-src http://ftp.us.debian.org/debian/ unstable main contrib non-free" >> $SOURCES

# -- upgrade to unstable
apt-get update
apt-get dist-upgrade

apt-get install firmware-realtek

apt-get install nvidia-cuda-dev
apt-get install gcc-4.4 g++-4.4
apt-get install libopenblas-base libopenblas-dev liblapack3 liblapack-dev
apt-get install libjpeg62 libjpeg62-dev
apt-get install mongodb
apt-get install python2.6-dev
apt-get install python-pip
apt-get install python-virtualenv virtualenvwrapper
