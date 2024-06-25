#!/bin/bash
read -p "Please enter your age : " age

if [[ $age -lt 18 && $age -ge 0 ]]
then 
	echo "You are minor"
elif [[ $age -eq 18 ]]
then
	echo "Congrats you've just become major"
elif [[ $age -gt 18 && $age -le 100 ]] 
then
	echo "You are major"
else
	echo "Please enter valid age." 
fi
