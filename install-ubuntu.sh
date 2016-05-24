#!/bin/bash

# VirtualBox 5.0
if [ ! grep -q "debian" /etc/apt/sources.list ]; then
  sudo echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" > /etc/apt/sources.list
  curl -q https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo apt-key add -
  sudo apt-get update
  sudo apt-get install virtualbox-5.0 -y
fi
