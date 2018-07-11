#!/bin/bash
clear
#scripts
NMAP="./nmap_internal.sh"
SSL="./ssl.sh"
GOO="./goofile.sh"
AUT="./automated.sh"
META="./meta_sh.sh"
SLASH="slash.sh"
DNS="./dns.sh"
PEOPLE="./people.sh"
ROBOT="./robots.sh"
#colors
BLUE='\033[4;34m'
CYAN='\033[0;106m'
NC='\033[0m'
clear
#echo "███╗   ███╗███████╗ ██████╗███╗   ██╗"
#sleep 0.25
#echo "████╗ ████║██╔════╝██╔════╝████╗  ██║"
#sleep 0.25
#echo "██╔████╔██║███████╗██║     ██╔██╗ ██║"
#sleep 0.25
#echo "██║ ██╔╝██║╚════██║██║     ██║╚██╗██║"
#sleep 0.25
#echo "██║ ╚═╝ ██║███████║╚██████╗██║ ╚████║"
#sleep 0.25
#echo "╚═╝     ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═══╝"
#sleep 0.25
#echo
#echo "Loading..." 
#source $SLASH
#echo
#echo "Welcome to MSCN - the Master Scanner!"
#echo "Select one of the options from the list below:"
#echo
#sleep 1
#echo
echo "   Network scan:"
echo 
echo "1. NMAP scan"
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

echo "0. Automated scan"
echo
echo
echo -n "Choice: "
read choice 
echo "Enter a network in this format: 192.168.1.0/24"
read ipmask
echo "Enter target(either domain or ip)"
read target

echo "Your choice is: $choice"

case $choice in
	1) source $NMAP;;
	2) source $SSL;;
	3) source $GOO;;
	4) source $DNS;;
	5) source $PEOPLE;;
	6) source $ROBOT;;
	7) source $META;;
	0) source $AUT;;
	*) echo "You have entered a wrong choice."
esac

