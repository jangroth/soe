#!/bin/bash

set -e

echo `basename $0`

rm -rf ~/.vim
rm -f ~/.vimrc
rm -f ~/.gvimrc

cp -r files/vim ~
mv ~/vim ~/.vim

ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.gvimrc ~/.gvimrc

mkdir -p ~/.vim/.vimswap
