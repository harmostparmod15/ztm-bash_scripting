#!/bin/bash

while :   # or while true
do
	output="$(pgrep -l $1)"
	if [[ -n "$output" ]]
	then
		echo "Process \"$1\"  is runing."   #backslah are used to enclose process name in double quotes
	else
		echo "Process \"$1\" is not runing."
	fi
	sleep 3
done
