#!/bin/bash

set -e

source ./config.sh

print_info_text "a fresh ubuntu installation..."

[ -e $USER_HOME/examples.desktop ] && rm $USER_HOME/examples.desktop
[ -d $USER_HOME/Public ] && rmdir $USER_HOME/Public
[ -d $USER_HOME/Templates ] && rmdir $USER_HOME/Templates

[ -d $USER_HOME/bin ] || mkdir -p $USER_HOME/bin
