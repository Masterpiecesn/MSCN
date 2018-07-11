#!/bin/bash
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'
#echo "Enter target(either ip or domain)"
#read target
echo "Scanning for live hosts..."
nmap -v -p1-65535 $ipmask > /dev/null 2>&1  > REPORT/all_internal.txt
cat REPORT/all.txt | grep open > REPORT/o_portsinternal.txt
cat REPORT/all.txt | grep filtered > REPORT/f_portsinternal.txt
#echo "Enter the network to scan for hosts:"
#read network
#nmap -sn $network | grep for | cut -d ' ' -f5,6 | sort -u > live_hosts.txt
#echo -ne $(cat ports.txt | sed  's/$/\\n/' | sed 's/ /\\a /g')
cat REPORT/all_internal.txt >> REPORT/report.txt
cat REPORT/o_portsinternal.txt >> REPORT/report.txt
cat REPORT/f_portsinternal.txt >> REPORT/report.txt
printf "${RED}$(cat REPORT/o_portsinternal.txt | sed  's/$/\\n/' | sed 's/ /\\a /g')${NC}"
printf "${GREEN}$(cat REPORT/f_portsinternal.txt | sed  's/$/\\n/' | sed 's/ /\\a /g')${NC}"
