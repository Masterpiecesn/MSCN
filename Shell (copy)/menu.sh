#!/bin/bash
clear
#scripts
NMAP="./nmap.sh"
NMAP_i="./nmap_internal.sh"
SSL="./ssl.sh"
GOO="./goofile.sh"
AUT="./automated.sh"
META="./meta_sh.sh"
SLASH="slash.sh"
DNS="./dns.sh"
PEOPLE="./people.sh"
ROBOT="./robots.sh"
AUT_i="./automated_internal.sh"
#colors
BLUE='\033[4;34m'
CYAN='\033[0;106m'
NC='\033[0m'
clear
echo "███╗   ███╗███████╗ ██████╗███╗   ██╗"
sleep 0.1
echo "████╗ ████║██╔════╝██╔════╝████╗  ██║"
sleep 0.1
echo "██╔████╔██║███████╗██║     ██╔██╗ ██║"
sleep 0.1
echo "██║ ██╔╝██║╚════██║██║     ██║╚██╗██║"
sleep 0.1
echo "██║ ╚═╝ ██║███████║╚██████╗██║ ╚████║"
sleep 0.1
echo "╚═╝     ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═══╝"
sleep 0.1
echo
echo "Loading..." 
source $SLASH
echo
echo "Welcome to MSCN - the Master Scanner!"
echo "Select one of the options from the list below:"
echo
sleep 1
echo "Are you going to do an internal or an external scan?"
echo
echo "1. Internal"
echo "2. External"
echo -n "Choice:"
read scan
case $scan in
	1) echo "Enter ip and mask ( example: 192.168.0.0/16 )"
read ipmask;;
	2) echo "Enter target(either domain or ip)"
	read target;;
esac
echo
echo "   Network scan:"
echo 
echo "1.1 NMAP external scan"
echo "1.2 NMAP internal scan"
echo "2. SSL scan"
echo
echo "   Recon people/domain:"
echo 
echo "3. Find domain's files"
echo "4. Background domain search"
echo "5. Background people search"
echo "6. Robots.txt background search"
echo
echo "   Perfom an attack:"
echo 
echo "7. TCP SYN flood attack"

echo "8.1. Automated external scan"
echo "8.2. Automated internal scan"
echo
echo
echo -n "Choice: "
read choice 
clear
#echo "Enter target(either domain or ip)"
#read target

echo "Your choice is: $choice"

case $choice in
	1.1) source $NMAP;;
	1.2) source $NMAP_i;;
	2) source $SSL;;
	3) source $GOO;;
	4) source $DNS;;
	5) source $PEOPLE;;
	6) source $ROBOT;;
	7) source $META;;
	8.1) source $AUT;;
	8.2) source $AUT_i;;
	*) echo "You have entered a wrong choice."
esac

