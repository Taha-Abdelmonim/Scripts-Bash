#!/bin/bash
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
cyan='\033[1;36m'
noColor='\033[0m' 
if [[ $EUID -ne 0 ]]; then
  echo -e "This Script must be as $red root"
  exit 1
else 
  echo -e -n "$red remove /$green add: $noColor";read howDo
  echo -e -n "Enter Name $cyan Site: $noColor";read nameSite
  if [ $howDo == 'add' ]; then
  printf "$green Please Wite Add Configrasion Site$purple $nameSite ... \n"
  sleep 1
  printf "
NameVirtualHost www.$nameSite.com:80
<VirtualHost www.$nameSite.com:80>
  ServerName www.$nameSite.com
  DocumentRoot /var/www/$nameSite
  ServerAlias $nameSite.com
  ServerAlias $nameSite
</VirtualHost>
  " >> /etc/apache2/sites-enabled/000-default.conf
  printf "
NameVirtualHost www.$nameSite.com:80
<VirtualHost www.$nameSite.com:80>
  ServerName www.$nameSite.com
  DocumentRoot /var/www/$nameSite
  ServerAlias $nameSite.com
  ServerAlias $nameSite
</VirtualHost>
  " >> /etc/apache2/sites-available/000-default.conf
  printf "$yellow Done Configrasion Site$purple $nameSite ... \n"
  sleep 1
  printf "$blue Start Create Directory and file Site$purple $nameSite ... \n"
  mkdir /var/www/$nameSite
  chmod 777 /var/www/$nameSite
  touch /var/www/$nameSite/index.php
  chmod 777 /var/www/$nameSite/index.php
  printf "
<?php
  phpinfo();
?>
  " >> /var/www/$nameSite/index.php
  sleep 1
  printf "$cyan Done Create Directory and file Site$purple $nameSite ... \n"
  sleep 1
  printf "$purple Start Genarite Host Site$green $nameSite ... \n"
  sed  -i "5i 127.0.1.1 $nameSite.com" /etc/hosts
  sed  -i "6i 127.0.1.1 www.$nameSite.com" /etc/hosts
  sleep 1
  printf "$yellow Done Genarite Host Site$purple $nameSite ... \n"
  sleep 1
  printf "$blue Please Wite Restarting $green apache... \n"
  systemctl restart apache2
  printf "$green Success  Add $cyan Site $purple $nameSite\n"
  exit 1
  elif [ $howDo == 'remove' ]; then
    printf "$green Please Wite $red Remove Configrasion Site$cyan $nameSite ... \n"
    sed -z "s/NameVirtualHost www.$nameSite.com:80\n<VirtualHost www.$nameSite.com:80>\n  ServerName www.$nameSite.com\n  DocumentRoot \/var\/www\/$nameSite\n  ServerAlias $nameSite.com\n  ServerAlias $nameSite\n<\/VirtualHost>//" -i /etc/apache2/sites-enabled/000-default.conf
    sed -z "s/NameVirtualHost www.$nameSite.com:80\n<VirtualHost www.$nameSite.com:80>\n  ServerName www.$nameSite.com\n  DocumentRoot \/var\/www\/$nameSite\n  ServerAlias $nameSite.com\n  ServerAlias $nameSite\n<\/VirtualHost>//" -i /etc/apache2/sites-available/000-default.conf
    sleep 1
    printf "$green Done $red Remove Configrasion Site$cyan $nameSite ... \n"
    sleep 1
    printf "$green Start $red Remove Directory and file Site$cyan $nameSite ... \n"
    rm -r /var/www/$nameSite
    sleep 1
    printf "$green Start $red Remove Host Site$cyan $nameSite ... \n"
    sed -i "s/127.0.1.1 $nameSite.com//" /etc/hosts
    sed -i "s/127.0.1.1 www.$nameSite.com//" /etc/hosts
    sleep 1
    printf "$green Done $red Remove Host Site$cyan $nameSite ... \n"
    sleep 1
    printf "$green Please Wite Restarting $blue apache... \n"
    systemctl restart apache2
    printf "$green Success $red Remove $blue Site$cyan $purple $nameSite\n"
    exit 1
  else 
    echo -e "$green the $howDo not $red Supported"
  fi
fi

<<commet
NameVirtualHost www.newsite.com:80
<VirtualHost www.newsite.com:80>
  ServerName www.newsite.com
  DocumentRoot /var/www/newsite
  ServerAlias newsite.com
  ServerAlias www.newsite.com
</VirtualHost>
commet