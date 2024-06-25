#!/bin/bash
#read -p "enter IP , network or domain to drop :" ip
	
echo "blocking connections from :  $1 "
sleep 1	

iptables -I INPUT -s $1 -j DROP	

echo "Done"
