#!/bin/bash
PS3="Your choice : "
select 	ITEM in "Add User" "List All Processes" "Kill Processes" "Install Program" "Quit"
do
	# add a user
	if [[ $REPLY -eq 1 ]]
	then
		read -p "Enter the username : " username
		output="$(grep -w $username /etc/passwd)"  #checking if user already exist
		if [[ -n " $output" ]]
		then
			echo "The user	$username already exists."	
		else
			sudo useradd -m -s /bin/bash "$username"
			if [[ $? -eq 0 ]]
			then
				echo"The user $username has been added successfully"
				tail -n 1 /etc/passwd	
			else
				echo "There was an error adding the user."
			fi
		fi
		
	# list all processes
	elif [[ $REPLY -eq 2 ]]
	then
		echo "Listing all processes ."
		sleep 1
		ps -ef
	
	# kill a process
	elif [[ $REPLY -eq 3 ]]
	then
		read -p "Enter the process to kill : " process
		pkill  $process

	# install program
	elif [[ $REPLY -eq 4 ]]
	then
		read -p "Enter the program to install : " app
		sudo apt update && sudo apt install $app -y

	# quit from the bash menu
	elif [[ $REPLY -eq 5 ]]
	then
		echo "Qutting..."
		sleep 1
		exit

	else
		echo "Invalid menu selection."
	fi

done

