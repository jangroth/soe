#!/bin/bash

set -e

FIND_START="find . -maxdepth 1 -type f -regex '^\./"
FIND_END='_.*'"'"

for i in `seq -w 0 99`
do
    FIND_COMMAND=${FIND_START}${i}${FIND_END}
    SCRIPT_TO_RUN=`eval $FIND_COMMAND`
    if [[ -n $SCRIPT_TO_RUN ]] ; then
        $SCRIPT_TO_RUN
    fi
done
