#!/bin/bash

set -e

current_dir="$(dirname "$0")"
. "${current_dir}/config.sh"

echo 'Configuring git...'
confirm_binaries "git"

INSTALL=false
if [ "$1" = 'all' ]; then
  INSTALL=true
fi

# update dotfiles only
rm -f $HOME/.gitconfig
cp -r "${current_dir}/../files/git/gitconfig" $HOME/.gitconfig

# update git dependencies
if [ $INSTALL = true ]; then
  rm -f $HOME/.zsh/gitcompletion.bash
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $HOME/.zsh/.git-completion.bash
  rm -f $HOME/.zsh/_git
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh -o $HOME/.zsh/_git
fi
