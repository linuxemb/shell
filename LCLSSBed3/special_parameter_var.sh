#!/bin/bash 
############# reading # of parameters
echo there are $# parameters supplied
if [ $# -ne 2 ]
then 
	echo Usage test a b
else
	echo
	total=$[$1+$2]  ## parameters retrieving
	echo total is $total
fi


## Reading programing name
name=`basename $0`
echo your programing is $name


###########parameters 1
if [ -n "$1" ]
then 
	echo Hello $1
else
	echo Sorry, you did not identify yr self
fi

######### last parameters ${$#} not work, need change to !#

echo last parameters is ${$#} # not working give nubers
echo last parameters is ${!#} # worked


###########x3 grab all data  $*  or $@ result is same at surface, but $@ treate them seperately, but $* treate them as one parameter

echo using \$* method: $*"
echo using \$@ method: $@"

######## differenc between $* $@
count=1
for param in "$*"
do
	echo "\$* parameter  #$count = $param"
	let count++
done

count=1
for param in "$@"
do
	echo "\$@ parameter #$count = $param"

	let count++
done
#######################shift

count=1
while  [ -n "$1" ]
do
	echo "parameter #$count=$1"
	let count++
	shift
done


