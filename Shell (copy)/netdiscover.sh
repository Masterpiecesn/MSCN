#!/bin/bash
#input="q"
echo "Press Ctrl+C when you want to exit."
sleep 4
clear
netdiscover -r $ipmask > REPORT/netdisc.txt
#sleep 2
#    if [[ $input = "q" ]]
#        then break 
#    fi
#echo "test"

