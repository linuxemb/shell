#!/bin/bash
TEMPFILE=/tmp/x.tmp
echo 0 > $TEMPFILE

# Loop goes here
  # Fetch the value and increase it
  COUNTER=$[$(cat $TEMPFILE) + 1]

  # Store the new value
  echo $COUNTER > $TEMPFILE
echo "count=" 
echo $COUNTER
# Loop done, script done, delete the file
#unlink $TEMPFILE
