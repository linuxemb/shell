#!/bin/bash
trap "echo 'Sorry, I have trapped ctrl-C'" SIGINT
echo This is a test script

ct=1
while [ $ct -le 10 ]
do	
	var= $ct+1
	echo "Loop $ct"
	echo "loop $var"
	sleep 1
        let ct++
	#((ct++)) #working
#	ct = $[$ct +1] NOT working
	echo "counter"
	echo $ct
done

#
echo "This is the end of the test script
#
