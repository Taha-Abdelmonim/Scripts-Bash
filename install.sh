#!bin/bash

sleep='sleep 0.1'
green='\e[1;32m'
cyan='\e[1;36m'
red='\e[0;31m'
blue='\e[1;34m'
white='\e[1;37m'
yellow='\e[1;33m'
bamba='\e[1;35m'
clear
echo -e '''
\e[1;33m----------------------------------------------------------------------------
\e[1;33m----------------------------------------------------------------------------

\e[1;35m____________________________________________________________________________
\e[1;35m____________________________________________________________________________
\033[1;36m TTTTTTTTTTTTTTTTTTTTTTTHHHHHHHHH     HHHHHHHHHVVVVVVVV           VVVVVVVV
\033[1;36m T:::::::::::::::::::::TH:::::::H     H:::::::HV::::::V           V::::::V
\033[1;36m T:::::::::::::::::::::TH:::::::H     H:::::::HV::::::V           V::::::V
\033[1;36m T:::::TT:::::::TT:::::THH::::::H     H::::::HHV::::::V           V::::::V
\033[1;36m TTTTTT  T:::::T  TTTTTT  H:::::H     H:::::H   V:::::V           V:::::V
\033[1;35m         T:::::T          H:::::H     H:::::H    V:::::V         V:::::V
\033[1;35m         T:::::T          H::::::HHHHH::::::H     V:::::V       V:::::V
\033[1;35m         T:::::T          H:::::::::::::::::H      V:::::V     V:::::V
\033[1;35m         T:::::T          H:::::::::::::::::H       V:::::V   V:::::V
\033[1;35m         T:::::T          H::::::HHHHH::::::H        V:::::V V:::::V
\033[1;35m         T:::::T          H:::::H     H:::::H         V:::::V:::::V
\033[1;35m         T:::::T          H:::::H     H:::::H          V:::::::::V
\033[1;32m       TT:::::::TT      HH::::::H     H::::::HH         V:::::::V
\033[1;32m       T:::::::::T      H:::::::H     H:::::::H          V:::::V
\033[1;32m       T:::::::::T      H:::::::H     H:::::::H           V:::V
\033[1;32m       TTTTTTTTTTT      HHHHHHHHH     HHHHHHHHH            VVV
\e[1;36m---------------------------------------------------------------------------
\e[1;32m---------------------------------------------------------------------------
                   \e[1;35m  T_A_H_A V_I_R_E_S=THV
\e[1;34m---------------------------------------------------------------------------
\e[1;33m---------------------------------------------------------------------------

'''

echo -e "plees wait......"
sleep 3
echo ''
echo -e "$blue 1}$cyan install awamer tremux"
echo  ''
echo -e "$yellow 0}$bamba exit "
echo ''
echo -e -n "$green Enter A Numper:";read name
if [ $name -eq "1"  ];then
\e[1;46m
  apt update && apt upgrade
  apt install apache2
  sudo ufw allow in "Apache"
  apt install mysql-server
  apt install php
  apt install libapache2-mod-php
  apt install php-mysql
  apt install gzip
  apt install man
  apt install wget -y
  apt install bc -y
  apt install htop -y
  apt install unzip
  apt install clocate
  apt install backuppc
  apt install rsync
  apt install smartmontools
  apt install ssh
  apt install openssh
  apt install python -y
  apt install python2 -y
  apt install python3 -y
  apt install git
  apt install host
  apt install nano
  apt install figlet
  apt install help
  apt install curl
  apt install wgetrc
  apt install uzip

  apt update && apt upgrade
elif [ $name -eq "0"  ];then
        exit

fi
figlet Done
exit
