#!/bin/bash
clear
#scripts
NMAP="./nmap.sh"
SSL="./ssl.sh"
GOO="./goofile.sh"
AUT="./automated.sh"
META="./meta_sh.sh"
SLASH="slash.sh"
#colors
BLUE='\033[4;34m'
CYAN='\033[0;106m'
NC='\033[0m'
clear
echo "███╗   ███╗███████╗ ██████╗███╗   ██╗"
sleep 0.25
echo "████╗ ████║██╔════╝██╔════╝████╗  ██║"
sleep 0.25
echo "██╔████╔██║███████╗██║     ██╔██╗ ██║"
sleep 0.25
echo "██║ ██╔╝██║╚════██║██║     ██║╚██╗██║"
sleep 0.25
echo "██║ ╚═╝ ██║███████║╚██████╗██║ ╚████║"
sleep 0.25
echo "╚═╝     ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═══╝"
sleep 0.25
echo
echo "Loading..." 
source $SLASH
echo
echo "Welcome to MSCN - the Master Scanner!"
echo "Select one of the options from the list below:"
echo
sleep 1
echo
echo "1. NMAP scan"
echo "2. SSL scan"
echo "3. Google background domain search"
echo "4. TCP SYN flood attack"
echo "5. Automated scan"
echo
echo
echo -n "Choice: "
read choice 
echo "Enter target(either domain or ip)"
read target

echo "Your choice is: $choice"

case $choice in
	1) source $NMAP;;
	2) source $SSL;;
	3) source $GOO;;
	4) source $META;;
	5) source $AUT;;
	*) echo "You have entered a wrong choice."
esac

