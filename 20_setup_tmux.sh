#!/bin/bash

set -e

source ./config.sh

print_info_text "tmux"

[ -f $USER_HOME/.tmux.conf ] && rm -f $USER_HOME/.tmux.conf

cp -r files/tmux/tmux.conf $USER_HOME/.tmux.conf

echo "updated tmux"
