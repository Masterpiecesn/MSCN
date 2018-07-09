#!/bin/bash
LOCATION="slash.txt"
for i in $(cat $LOCATION); do
	echo -n $i
	sleep 0.1
	echo -en "\b\b"
	#clear
done
