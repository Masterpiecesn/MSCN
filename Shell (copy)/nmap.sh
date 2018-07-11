#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'
#echo "Enter target(either ip or domain)"
#read target
echo "Open ports -> red, Filtered ports -> green:"
nmap -T4 -A -v $target > /dev/null 2>&1  > REPORT/all.txt
cat REPORT/all.txt | grep Discovered | cut -d ' ' -f1,2,3,4 | sort -u > REPORT/o_ports.txt
cat REPORT/all.txt | grep filtered | cut -d ' ' -f1,2,3,4,5,6 | sort -u > REPORT/f_ports.txt
#echo "Enter the network to scan for hosts:"
#read network
#nmap -sn $network | grep for | cut -d ' ' -f5,6 | sort -u > live_hosts.txt
#echo -ne $(cat ports.txt | sed  's/$/\\n/' | sed 's/ /\\a /g')
cat REPORT/all.txt >> REPORT/report.txt
cat REPORT/o_ports.txt >> REPORT/report.txt
cat REPORT/f_ports.txt >> REPORT/report.txt
printf "${RED}$(cat REPORT/o_ports.txt | sed  's/$/\\n/' | sed 's/ /\\a /g')${NC}"
printf "${GREEN}$(cat REPORT/f_ports.txt | sed  's/$/\\n/' | sed 's/ /\\a /g')${NC}"
