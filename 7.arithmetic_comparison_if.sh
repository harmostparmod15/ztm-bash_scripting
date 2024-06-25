#!/bin/bash
read -p "Please enter your age : " age

if [[ $age -lt 18 ]]
then 
	echo "You are minor"
elif [[ $age -eq 18 ]]
then
	echo "Congrats you've just become major"
else
	echo "You are major"
fi
