#!/bin/bash

set -e

source ./config.sh

print_info_text "vim, gnome-vim (macvim)"

rm -rf $HOME/.vim
rm -rf $HOME/.vimrc
rm -rf $HOME/.gvimrc

cp -r ../files/vim $HOME
mv $HOME/vim $HOME/.vim

ln -s $HOME/.vim/vimrc $HOME/.vimrc
ln -s $HOME/.vim/gvimrc $HOME/.gvimrc

mkdir -p $HOME/.vim/.vimswap
mkdir -p $HOME/.vim/bundle

git clone --depth=1 --branch=master https://github.com/morhetz/gruvbox.git $HOME/.vim/bundle/gruvbox
git clone --depth=1 --branch=master https://github.com/scrooloose/nerdtree $HOME/.vim/bundle/nerdtree
git clone --depth=1 --branch=master https://github.com/Xuyuanp/nerdtree-git-plugin.git $HOME/.vim/bundle/nerdtree-git-plugin
git clone --depth=1 --branch=master https://tpope.io/vim/surround.git $HOME/.vim/bundle/surround
git clone --depth=1 --branch=master https://github.com/plasticboy/vim-markdown.git $HOME/.vim/bundle/vim-markdown

find $USER_HOME/.vim/bundle/ -maxdepth 2 -type d -name '.git' | xargs rm -rf {}

echo "updated vim"
