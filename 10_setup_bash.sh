#!/bin/bash

set -e

echo `basename $0`

rm -f ~/.bashrc
rm -f ~/.bash_aliases
rm -f ~/.bash_profile
rm -f ~/.profile

cp -r files/bash/.bashrc ~/
cp -r files/bash/.bash_aliases ~/
cp -r files/bash/.bash_profile ~/
cp -r files/bash/.profile ~/

echo "updated bash - if you want to see the changes in this shell, run source ~/.bashrc"
