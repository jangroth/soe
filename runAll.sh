#!/bin/bash

set -e
#set -x

for i in `seq -w 9 10`
do
    FIND_START="find . -maxdepth 1 -type f -regex '^\./"
    FIND_END='_.*'
    FIND_COMMAND=$FIND_START$i$FIND_END"'"
    echo $FIND_COMMAND
    $FIND_COMMAND
    if [[ -n `$FIND_COMMAND` ]] ; then
        echo "true $i"
    else
        echo "false $i"
    fi
done

