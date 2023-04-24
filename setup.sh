#! /bin/zsh

RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BLUE='\033[34m'
ENDCOLOR='\033[0m'

sudo apt update
sudo apt upgrade -y

echo "${YELLOW}INSTALLING VIRTUALBOX...${ENDCOLOR}"
sudo apt install virtualbox -y

echo "${YELLOW}INSTALLING VAGRANT...${ENDCOLOR}"
sudo apt install vagrant

echo "configure a path for vagrant boxes? default is: ~/.vagrant.d"

echo "${YELLOW}VAGRANT IS READY TO GO!${ENDCOLOR}"
echo "vagrant up\t\tin your Vagrantfile directory to set it up"
echo "vagrant ssh\t\tto launch"
