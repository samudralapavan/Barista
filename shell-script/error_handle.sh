#!/bin/bash


<< Error
The script forhandling the error
Error

create_directory () {
	echo "Directory Created"
	#i=1
	#for ((i=1; i<=5; i++))
	mkdir pavans$i
}
if ! create_directory; then
	echo "The directory alreay existed"
	exit 1
fi
