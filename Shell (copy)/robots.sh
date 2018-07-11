#!/bin/bash
clear

#Remove old files
rm robots.txt 2>/dev/null
rm tmp 2>/dev/null

echo
echo
echo
#echo -n "Enter a domain for the robots.txt: "
#Check for no response
#read domain

if [ -z $target ];then
	echo	
	echo "You did not enter a domain."
	exit
fi

echo
echo
echo "Domain found!"
#firefox &
#sleep 4
#firefox $domain/robots.txt
wget -q $target/robots.txt 
cat robots.txt | grep 'Disallow' | cut -d ' ' -f2 > tmp
cat robots.txt | grep 'Allow' | cut -d ' ' -f2 >> tmp

cat tmp > REPORT/robotinfo.txt
cat REPORT/robotinfo.txt >> REPORT/report.txt
cat REPORT/robotinfo.txt
rm tmp
rm robots.txt
#firefox &
#sleep 4

# Read a list and open each line in new tab
#for i in $(cat tmp); do
#	firefox -new-tab $domain$i &
#	sleep 2
#done



