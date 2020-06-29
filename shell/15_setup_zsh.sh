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
[ -f "$HOME/.zshrc" ] && rm -f $HOME/.zshrc
[ -f "$HOME/.p10k.zsh" ] && rm -f $HOME/.p10k.zsh
[ -f "$HOME/.shell_aliases" ] && rm -f $HOME/.shell_aliases
mkdir -p $HOME/.zsh
cp -r "${current_dir}/../files/zsh/zshrc" $HOME/.zshrc
cp -r "${current_dir}/../files/zsh/p10k.zsh" $HOME/.p10k.zsh
cp -r "${current_dir}/../files/shell/shell_aliases" $HOME/.zsh/.shell_aliases

# update git dependencies
if [ $INSTALL = true ] || [ ! -d "$HOME/.zsh/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.zsh/powerlevel10k
fi
