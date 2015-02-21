#!/bin/bash

set -e

source ./config.sh

print_info_text "bash, tree"

[ -f $USER_HOME/.bashrc ] && rm -f $USER_HOME/.bashr
[ -f $USER_HOME/.bash_aliases ] && rm -f $USER_HOME/.bash_aliases
[ -f $USER_HOME/.bash_colors ] && rm -f $USER_HOME/.bash_colors
[ -f $USER_HOME/.bash_functions ] && rm -f $USER_HOME/.bash_functions
[ -f $USER_HOME/.bash_profile ] && rm -f $USER_HOME/.bash_profile
[ -f $USER_HOME/.profile ] && rm -f $USER_HOME/.profile

cp -r files/bash/.bashrc $USER_HOME/
cp -r files/bash/.bash_aliases $USER_HOME/
cp -r files/bash/.bash_colors $USER_HOME/
cp -r files/bash/.bash_functions $USER_HOME/
cp -r files/bash/.bash_profile $USER_HOME/
cp -r files/bash/.profile $USER_HOME/

echo "updated bash configuration"
