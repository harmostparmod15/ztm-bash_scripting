#!/bin/bash
output="$(ping -c 3 $1)"   # ip address if first agrument of script
#echo $output
if [[ $output ==  *"100% packet loss"* ]]
then
	echo "Connection to $1 is not working"
else
	echo "Connection to $1 is working"
fi
