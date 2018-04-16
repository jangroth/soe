#!/bin/bash

set -e

source ./config.sh

print_info_text "vim, gnome-vim (macvim)"

rm -rf $USER_HOME/.vim
rm -rf $USER_HOME/.vimrc
rm -rf $USER_HOME/.gvimrc

cp -r files/vim $USER_HOME
mv $USER_HOME/vim $USER_HOME/.vim

ln -s $USER_HOME/.vim/vimrc $USER_HOME/.vimrc
ln -s $USER_HOME/.vim/gvimrc $USER_HOME/.gvimrc

mkdir -p $USER_HOME/.vim/.vimswap
mkdir -p $USER_HOME/.vim/bundle

git clone https://github.com/scrooloose/nerdtree $USER_HOME/.vim/bundle/nerdtree
git clone https://github.com/pearofducks/ansible-vim ~/.vim/bundle/ansible-vim
