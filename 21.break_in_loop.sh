#!/bin/bash
while true
do
	ping -c 1 $1 &> /dev/null
	if [[ $? -eq 0 ]]
	then
		echo "OK"
	else
		echo "Quitting from while loop."
		break
	fi
	sleep 1
done
echo "Ping to $1 is not working ,I'm sending an email to the admin."
