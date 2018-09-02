#!/bin/bash

set -e

source ./config.sh

print_info_text "tmux"

[ -d $USER_HOME/.tmux ] && rm -rf $USER_HOME/.tmux
[ -f $USER_HOME/.tmux.conf ] && rm -f $USER_HOME/.tmux.conf

cp -r ../files/tmux/tmux.conf $USER_HOME/.tmux.conf

git clone https://github.com/tmux-plugins/tpm $USER_HOME/.tmux/plugins/tpm

echo "updated tmux"
