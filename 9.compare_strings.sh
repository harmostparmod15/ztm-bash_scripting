#!/bin/bash
read -p "String 1 : " str1

read -p "Srting 2 : " str2

if [[ "$str1" == "$str2" ]]
then
	echo "Both strings are equal"
elif [[ -z "$str1" || -z "$str2" ]]
then
	echo "One of the string is empty"
else
	echo "Both strings are not equal"	
fi
