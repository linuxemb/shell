#!/bin/bash 

## n1 --> only accetp a singal charactoer before exiting 

read -n1 -p "Do you like to continue" answer
case  $answer in
	Y|y)echo 
		echo "fine contnue..";;
		N | n) echo
		echo OK, bye
		exit;;
esac
echo "end of your script"

