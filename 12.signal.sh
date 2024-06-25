#!/bin/bash
if [[ $# -ne 2 ]]
then
	echo "Run the script with 2 arguments:Signal and PID."
	exit 1
fi

case "$1" in 
1)
	echo "Sending the SIGHUP signal to $2"
	kill -SIGHUP $2
	;;
2)
	echo "Sending the SIGINT signal to $2"
	kill -SIGINT $2
	;;
15)
	echo "Sending the SIGTERM signal to $2"
	kill -SIGTERM $2
	;;
*)
	echo "Signal no. $1 will not be delivered ."
	;;
esac	
