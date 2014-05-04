#!/bin/bash

export USER_HOME="/home/jan"

function print_info_text {
    echo "***************************"
    echo `basename $0`
    echo
    echo "Required:"
    echo -e "\t $1"
    echo "***************************"
}
