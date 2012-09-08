#!/bin/bash

set -e

# -- replace all instances of squeeze with unstable
mv ./sources.list /etc/apt/sources.list

# -- upgrade to unstable
apt-get update
apt-get dist-upgrade

. setup1.sh

update-rc.d mongodb remove
rm -Rf /var/lib/mongodb

