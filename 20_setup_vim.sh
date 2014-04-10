#!/bin/bash

set -e

echo `basename $0`

rm -rf ~/.vim
rm -f ~/.vimrc

cp -r files/vim ~
mv ~/vim ~/.vim

ln -s ~/.vim/.vimrc ~/.vimrc

mkdir -p ~/.vim/.vimswap
