#!/bin/bash

# simple function without arg type 1 
function log (){
	echo "I'm a simple log function"
}

# simple function without arg type 2 
display(){
	echo "I'm displaying"
}

# function accepting 2 arguments , create 2 files and change their perms 
create_files() {
	echo "Creating $1 "
	touch $1
	chmod 400 $1
	echo "####################"
	echo "Creating $2"
	touch $2
	chmod 644 $2
}

log
#sleep 1 
#display
create_files aa.txt bb.txt
