#!/bin/bash

set -e

source ./config.sh

print_info_text "git"

[ -f $USER_HOME ] && rm -f $USER_HOME/.gitconfig

cp files/git/gitconfig $USER_HOME/.gitconfig
