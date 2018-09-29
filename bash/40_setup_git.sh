#!/bin/bash

set -e

source ./config.sh

print_info_text "git"

[ -f $USER_HOME ] && rm -f $USER_HOME/.gitconfig
[ -f $USER_HOME ] && rm -f $USER_HOME/.gitcompletion
[ -f $USER_HOME ] && rm -f $USER_HOME/.gitprompt

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ../files/git/gitcompletion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ../files/git/gitprompt

cp ../files/git/gitconfig $USER_HOME/.gitconfig
cp ../files/git/gitcompletion $USER_HOME/.gitcompletion
cp ../files/git/gitprompt $USER_HOME/.gitprompt
