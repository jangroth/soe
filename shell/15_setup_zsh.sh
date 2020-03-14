#!/bin/sh

set -xe

current_dir="$(dirname "$0")"
. "${current_dir}/config.sh"

echo 'Configuring zsh...'
confirm_binaries "zsh"

INSTALL=false
if [ "$1" = 'all' ]; then
  INSTALL=true
fi

# update dotfiles only
[ -f "$HOME/.zshr" ] && rm -f $HOME/zshrc
[ -f "$HOME/.zshrc" ] && rm -f $HOME/.zshrc
[ -f "$HOME/.shell_aliases" ] && rm -f $HOME/.shell_aliases
mkdir -p $HOME/.zsh
cp -r "${current_dir}/../files/zsh/zshrc" $HOME/.zshrc
cp -r "${current_dir}/../files/shell/shell_aliases" $HOME/.zsh/.shell_aliases

# update git dependencies
if [ $INSTALL = true ] || [ ! -d "$HOME/.oh-my-zsh" ]; then
  [ -d "$HOME/.oh-my-zsh" ] && rm -rf $HOME/.oh-my-zsh
  git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
  git clone --depth 1 https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
fi
