#!/bin/bash
NMAP="./nmap.sh"
SSL="./ssl.sh"
GOO="./goofile.sh"
clear
#echo "Enter a target(ip/domain)"
#read target
echo "Searching started..."
source $NMAP
source $SSL
source $GOO 
echo "DONE"
clear

