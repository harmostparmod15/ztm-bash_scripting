#!/bin/bash

if [[ $# -eq 1 ]]    #check if user have provided argument 
then
	if [[ -f "$1" ]]
	then
		echo "The argument is file. Displaying its content......."
		sleep 1
		cat $1 
	elif [[ -d "$1" ]]
	then 
		echo "The argument is directory. Displaying its content ......"
		sleep 1
		ls -l
	else
		echo "file not exist. Creating it now ....."
		sleep 1
		touch "$1".txt
	fi
else
	echo "Script should be run with one argument"
fi

