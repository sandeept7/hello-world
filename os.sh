#!/bin/bash
LIST_OF_PACKAGES="nginx php mysql-client mysql-server"

if [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
echo $OS
echo $VER
sudo apt-get install $LIST_OF_PACKAGES
elif [ -f /etc/debian_version ]; then
    OS=Debian
    VER=$(cat /etc/debian-version)
echo $OS
echo $VER
sudo apt-get install $LIST_OF_PACKAGES
elif [ -f /etc/redhat-release ]; then
   OS=Redhat
   VER=$(cat /etc/redhat-version)
echo $OS
echo $VER
yum install $LIST_OF_PACKAGES
else
    OS=$(uname -s)
    VER=$(uname -r)
fi


