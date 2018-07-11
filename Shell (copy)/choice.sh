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
NET="./netdiscover.sh"
#colors
BLUE='\033[4;34m'
CYAN='\033[0;106m'
NC='\033[0m'
long="==================================="
medium="=================="
short="========="
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
	1)	echo "Internal scan options"
		echo $long
		echo "1. NMAP internal scan"
		echo "2. NetDiscover internal scan"
		echo "3. Automated scan"
		echo
		echo
		echo "Enter ip and mask ( example: 192.168.0.0/16 )"
		read ipmask
		echo -n "Choose a scanning method:"
		read method
		case $method in
			1) source $NMAP_i;;
			2) source $NET;;
			3) source $AUT_i;;
			*) echo "You have entered a wrong choice.";;
		esac;;
	2)	 	
		echo
		echo -e "\x1B[1;34mNetwork scan\x1B[0m"
		echo 
		echo "1. NMAP external scan"
		echo
		echo "2. SSL scan"
		echo
		echo -e "\x1B[1;34mRecon people/domain\x1B[0m"
		echo 
		echo "3. Find domain's files"
		echo "4. Background domain search"
		echo "5. Background people search"
		echo "6. Robots.txt background search"
		echo
		echo -e "\x1B[1;34mPerform an attack\x1B[0m"
		echo 
		echo "7. TCP SYN flood attack"

		echo "8. Automated external scan"
		echo
		echo
		echo "Enter target(either domain or ip)"
		read target;
		echo -n "Enter scanning method: "
		read choice 
		clear
		#echo "Enter target(either domain or ip)"
		#read target

		echo "Your choice is: $choice"

		case $choice in
			1) source $NMAP;;
			2) source $SSL;;
			3) source $GOO;;
			4) source $DNS;;
			5) source $PEOPLE;;
			6) source $ROBOT;;
			7) source $META;;
			8) source $AUT;;
			*) echo "You have entered a wrong choice.";;
		esac;;
		*) echo "You have entered a wrong choice.";;
esac
