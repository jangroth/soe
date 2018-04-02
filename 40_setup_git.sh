#!/bin/bash

set -e

source ./config.sh

print_info_text "git"

[ -f $USER_HOME ] && rm -f $USER_HOME/.gitconfig
[ -f $USER_HOME ] && rm -f $USER_HOME/.gitcompletion

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o files/git/gitcompletion

cp files/git/gitconfig $USER_HOME/.gitconfig
cp files/git/gitcompletion $USER_HOME/.gitcompletion
