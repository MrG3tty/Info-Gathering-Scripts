#!/bin/bash
#Alter line 5 for the ip address ranges  

for i in {1..254} ;
do (ping -c 1 10.42.13.$i | grep "bytes from" &) ;done > ips.txt
cat ips.txt | awk '{print $4}' | tr -d :
