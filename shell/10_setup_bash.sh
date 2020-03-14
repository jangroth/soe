#!/bin/bash

set -e

source ./config.sh

[ -f $HOME/.bashrc ] && rm -f $HOME/.bashrc
[ -f $HOME/.bash_aliases ] && rm -f $HOME/.bash_aliases
[ -f $HOME/.bash_colors ] && rm -f $HOME/.bash_colors
[ -f $HOME/.bash_functions ] && rm -f $HOME/.bash_functions
[ -f $HOME/.bash_profile ] && rm -f $HOME/.bash_profile
[ -f $HOME/.profile ] && rm -f $HOME/.profile

cp -r ../files/bash/bashrc $HOME/.bashrc
cp -r ../files/bash/bash_aliases $HOME/.bash_aliases
cp -r ../files/bash/bash_colors $HOME/.bash_colors
cp -r ../files/bash/bash_functions $HOME/.bash_functions
cp -r ../files/bash/bash_profile $HOME/.bash_profile
cp -r ../files/bash/profile $HOME/.profile

echo "bash configuration updated"
