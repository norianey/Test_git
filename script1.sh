#! /bin/bash

#input of the machines
ifconfig
lspci
lshw
dmidecode
hwinfo
lscpu
lsblk
fdisk -l
blkid
free -m
blkid
df -m
netstat
uname -a

# output

hostname
cat /etc/*release
cat /etc/passwd
uptime
date
# verify if apache is running


if [ "$systemctl status apache2  == active and running " ]  ; then
	echo "apache exist and up running"
fi

#is ssh 
net=$(netstat -plant | grep :22 )

if [ "$net == Listen " ] ; then 
	echo " ssh is installed and listening "
fi
