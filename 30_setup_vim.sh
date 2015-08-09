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

git clone https://github.com/gmarik/Vundle.vim.git $USER_HOME/.vim/bundle/Vundle.vim

mkdir -p $USER_HOME/.vim/.vimswap
