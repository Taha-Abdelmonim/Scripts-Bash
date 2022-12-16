#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  red='\033[0;31m'
  echo -e "This Script must be as $red root"
  exit 1
else 
  sys_ubuntu=$(cat /etc/os-release | grep -o -m1 "Ubuntu")
  #echo $sys_ubuntu
  if [[ $sys_ubuntu == "Ubuntu" ]]; then
    echo -e "\n$(date "+%d-%m-%Y --- %T") --- Starting work\n"
    apt update
    apt -y upgrade
    apt -y autoremove
    apt -y autoclean
    echo -e "\n$(date "+%T") Script Terminated \n"
  else 
    echo "I do not Know this system $sys_ubuntu"
  fi
fi