#!/bin/bash
set -e
apt-get update

function agi {
    apt-get -qq -y install "$@"
}

agi vim git
agi firmware-realtek
agi nvidia-cuda-dev nvidia-cuda-toolkit
agi gcc-4.4 g++-4.4
agi libopenblas-base libopenblas-dev liblapack3 liblapack-dev
#agi libjpeg62 libjpeg62-dev
agi  libjpeg8 libjpeg8-dev
agi libpng12-0 libpng-dev
agi mongodb mongodb-clients
agi python2.7-dev
agi python-pip
agi python-virtualenv
agi gfortran
agi libfreetype6 libfreetype6-dev
agi screen

apt-get -qq -y autoremove
apt-get -qq -y autoclean
