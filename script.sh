#! /bin/bash

servstat=$(systemctl status apache2)

if [ "$servstat" == " active" ; then
	echo " apache is installed"
else
apt install apache2
       echo " apache is installed now "

      fi

# verify if serice is running

if [ "$servstat" == " active and running" ; then
        echo " apache is installed"
else
systemctl enable --now apache2 &&
	echo " apache is up and running"
fi

# pid number

echo " pid number"
ps -aux | grep apache2

# index.html file
cd /var/www/html
echo ' Yes we did it !! ' >> index.html
