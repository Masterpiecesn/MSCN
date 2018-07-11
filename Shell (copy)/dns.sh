 #!/bin/bash
clear

echo
echo
echo
echo -n "Enter a domain: "
#Check for no response
read domain

if [ -z $domain ];then
	echo	
	echo "You did not enter a domain"
	exit
fi

echo
echo
echo "Starting recon on: $domain"
read -p "Press <enter> to continue"
echo
firefox &
sleep 4
firefox http://www.intodns.com/$domain &
sleep 2
firefox -new-tab https://www.dnsstuff.com/tools#dnsReport|type=domain&&value=$domain &
sleep 2
firefox -new-tab http://viewdns.info/dnsreport/?domain=$domain &
 

