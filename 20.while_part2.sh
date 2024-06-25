#!/bin/bash
while ping -c 1 8.8.8.8 
do
	echo "Ping was successful."
	sleep 1
done
