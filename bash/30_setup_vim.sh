#!/bin/bash

set -e

source ./config.sh

print_info_text "vim, gnome-vim (macvim)"

rm -rf $USER_HOME/.vim
rm -rf $USER_HOME/.vimrc
rm -rf $USER_HOME/.gvimrc

cp -r ../files/vim $USER_HOME
mv $USER_HOME/vim $USER_HOME/.vim

ln -s $USER_HOME/.vim/vimrc $USER_HOME/.vimrc
ln -s $USER_HOME/.vim/gvimrc $USER_HOME/.gvimrc

mkdir -p $USER_HOME/.vim/.vimswap
mkdir -p $USER_HOME/.vim/bundle

git clone --depth=1 --branch=master https://github.com/scrooloose/nerdtree $USER_HOME/.vim/bundle/nerdtree
git clone --depth=1 --branch=master https://github.com/Xuyuanp/nerdtree-git-plugin.git $USER_HOME/.vim/bundle/nerdtree-git-plugin
git clone --depth=1 --branch=master https://github.com/pearofducks/ansible-vim $USER_HOME/.vim/bundle/ansible-vim
git clone --depth=1 --branch=master https://tpope.io/vim/surround.git $USER_HOME/.vim/bundle/surround
git clone --depth=1 --branch=master https://github.com/plasticboy/vim-markdown.git $USER_HOME/.vim/bundle/vim-markdown

find $USER_HOME/.vim/bundle/ -maxdepth 2 -type d -name '.git' | xargs rm -rf {}

echo "updated vim"
