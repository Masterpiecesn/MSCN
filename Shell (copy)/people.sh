#!/bin/bash
clear

echo
echo
echo
echo -n "First name: "
#Check for no response
read fname

if [ -z $fname ];then
	echo	
	echo "You did not enter a name"
	exit
fi

echo
echo -n "Last name: "
#Check for no response
read lname

if [ -z $lname ];then
	echo	
	echo "You did not enter a name"
	exit
fi

echo
echo "Starting recon on: $fname $lname"
read -p "Press <enter> to continue"
echo
echo
firefox &
sleep 4
firefox http://www.411.com/name/$fname-$lname/ &
sleep 2
firefox -new-tab https://pipl.com/search/?q=$fname+$lname &
sleep 2
firefox -new-tab http://www.spokeo.com/search?q=$fname+$lname &
 

