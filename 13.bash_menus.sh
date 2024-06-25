#!/bin/bash
PS3="Choose your country : "
select COUNTRY in Germany France USA "United Kingdom" Quit
do 
	#echo "Your country is $COUNTRY"
	#echo "Your reply is $REPLY"
	
	case $REPLY in 
	1)
		echo "You speak German"
		;;
	2)
		echo "You speak French"
		;;
	3)
		echo "You speak English"
		;;
	4)	
		echo "You speak English"
		;;
	5)
		echo "Quitting..."
		sleep 1
		exit
		;;
	*)
		echo "Invalid option $REPLY"
		;;
	esac


done
