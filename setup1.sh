#!/bin/bash
set -e

function agi {
    apt-get -qq -y install "$@"
}

agi vim git
agi firmware-realtek
agi nvidia-cuda-dev
agi gcc-4.4 g++-4.4
agi libopenblas-base libopenblas-dev liblapack3 liblapack-dev
agi libjpeg62 libjpeg62-dev
agi mongodb
agi python2.7-dev
agi python-pip
agi python-virtualenv
agi gfortran
agi libfreetype6 libfreetype6-dev
