#!/bin/bash 

#################  Read from command line 
## n1 --> only accetp a singal charactoer before exiting 
#  -s silence read,  
# -t timeout 
#read -n1 -p "Do you like to continue" answer
read -t 5  -p "Do you like to continue" answer ## wait for 5 sec
case  $answer in
	Y|y)echo 
		echo "fine contnue..";;
		N | n) echo
		echo OK, bye
		exit;;
esac
echo "end of your script"

#################  Read from file 
count =1
cat test | while read line
do
	echo "line $count:$line"
	let count++
done
echo "Finished processing file"


###########33333333333333
#$ ./reading.sh
#Do you like to continuey
fine contnue..
end of your script
./reading.sh: line 17: count: command not found
line :
line 1:
line 2:#!/bin/bash
line 3:##### geti option  same way as parameter val, use case srtatement to determine when a parameter is formateded as an option
line 4:
line 5:while [ -n "$1" ]
line 6:do
line 7:case "$1" in
line 8:-a) echo "found the a option";;
line 9:-b) echo "fount the -bopoint";;
line 10:-c) echo "fount the -c opoint";;
line 11:*) echo "$1 is not an option ";;
line 12:esac
#line 13:shift
#line 14:done
#line 15:
#Finished processing file

