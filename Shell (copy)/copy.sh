#!/bin/bash 
cat tmp > REPORT/netdiscover.txt
cat REPORT/netdiscover.txt >> all.txt
rm tmp
