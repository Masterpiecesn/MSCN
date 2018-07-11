#!/bin/bash
NMAP_i="./nmap_internal.sh"
NET_i="./netdiscover.sh"
#COPY="./copy.sh"
#SSL="./ssl.sh"
#GOO="./goofile.sh"
#ROBOT="./robots.sh"
clear
#echo "Enter a target(ip/domain)"
#read target
#echo "Enter ip and mask ( Example: 192.168.1.0/24 )"
#read ipmask
echo "Searching started..."
source $NMAP_i
source $NET_i
#source $COPY
#source $SSL
#source $GOO 
#source $ROBOT
echo "DONE"
clear

