#!/bin/sh
set -e
[ "$DOT_DEBUG" = 'true' ] && set -x

. "$(dirname "$0")/config.sh"

echo 'Configuring vim...'
confirm_binaries "git" "vim" "curl"

mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle $HOME/.vim/.vimswap

cp -rf "${DOT_ROOT}/files/vim/." $HOME/.vim
ln -sf $HOME/.vim/vimrc $HOME/.vimrc

# update remote dependencies
if [ "${DOT_REINSTALL}" = "true" ] || [ ! -f "$HOME/.vim/autoload/pathogen.vim" ]; then
    rm -rf $HOME/.vim/bundle
    curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    git clone --depth=1 --branch=master https://github.com/morhetz/gruvbox.git $HOME/.vim/bundle/gruvbox
    git clone --depth=1 --branch=master https://github.com/scrooloose/nerdtree.git $HOME/.vim/bundle/nerdtree
    git clone --depth=1 --branch=master https://github.com/Xuyuanp/nerdtree-git-plugin.git $HOME/.vim/bundle/nerdtree-git-plugin
    git clone --depth=1 --branch=master https://tpope.io/vim/surround.git $HOME/.vim/bundle/surround
    git clone --depth=1 --branch=master https://github.com/plasticboy/vim-markdown.git $HOME/.vim/bundle/vim-markdown
    find $HOME/.vim/bundle/ -maxdepth 2 -type d -name '.git' | xargs rm -rf {}
fi

echo "-> vim setup finished"
