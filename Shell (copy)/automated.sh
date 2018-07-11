#!/bin/bash
NMAP="./nmap.sh"
SSL="./ssl.sh"
GOO="./goofile.sh"
ROBOT="./robots.sh"
clear
#echo "Enter a target(ip/domain)"
#read target
echo "Searching started..."
source $NMAP
echo $long >> report.txt
source $SSL
echo $long >> report.txt
source $GOO
echo $long >> report.txt 
source $ROBOT
echo $long >> report.txt
echo "DONE"
clear

