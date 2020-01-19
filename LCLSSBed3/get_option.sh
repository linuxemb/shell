

#!/bin/bash 
##### geti option  same way as parameter val, use case srtatement to determine when a parameter is formateded as an option

while [ -n "$1" ]
do
	case "$1" in
	-a) echo "found the a option";;
	-b) echo "fount the -bopoint";;
	-c) echo "fount the -c opoint";;
	*) echo "$1 is not an option ";;
	esac
shift
	done

