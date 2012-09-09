#!/bin/bash

set -e

# -- replace all instances of squeeze with unstable
cp ./sources.list /etc/apt/sources.list

# -- upgrade to unstable
apt-get update
apt-get dist-upgrade

. setup1.sh

update-rc.d mongodb remove
rm -Rf /var/lib/mongodb

F=/etc/default/nvidia-kernel
echo "# How many nVidia cards are in the system?" > $F
echo "# NVIDIA_CARDS= " >> $F
echo "# -- HACK to override crappy /etc/init.d/nvidia-kernel" >> $F
echo "nvidia-smi" >> $F


