#!/bin/bash
NMAP="./nmap.sh"
SSL="./ssl.sh"
GOO="./goofile.sh"
AUT="./automated.sh"
echo
echo
echo "Welcome"
echo "This is my master script"
echo
echo
echo "1. NMAP scan"
echo "2. SSL scan"
echo "3. Google search"
echo "4. Automated scan"
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
	4) source $AUT;;
	*) echo "You have entered a wrong choice."
esac

