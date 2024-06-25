#!/bin/bash
read -p "Enter your favourite pet :" pet
case "$pet" in 
"dog")          # we can ommit double quotes here , because no world splitinh will be performed here i.e we can use dog also ,
	echo "Your favourite pet is dog"
	;;
"cat" | "Cat" | "Kitty")
	echo "You like cats"
	;;
*)
	echo "You dont have a pet"
	;;
esac
