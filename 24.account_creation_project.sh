#!/bin/bash

readarray accounts< <(cat ./users.txt)

for account in "${accounts[@]}"
do
	user=$(echo $account | cut -d: -f1)
	group=$(echo $account | cut -d: -f2)
	if [[ -z "$(grep -w $group /etc/group)" ]]
	then
		groupadd $group
		echo "Group $group added successfully"
	else
		echo "Group $group already exist"
	fi
	if [[ -z "$(grep -w $group /etc/passwd)" ]]
	then
		useradd  -G $group $user	
		echo"User $user created successfully"
	else
		echo "User $user already exist"
	fi
	echo "################################"
	sleep 1
done
