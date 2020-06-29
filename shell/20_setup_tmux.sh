#!/bin/bash

set -e

source ./config.sh

print_info_text "tmux"

[ -d $HOME/.tmux ] && rm -rf $HOME/.tmux
[ -f $HOME/.tmux.conf ] && rm -f $HOME/.tmux.conf

cp -r ../files/tmux/tmux.conf $HOME/.tmux.conf

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

echo "tmux set up, use 'prefix+I' to install tmux plugins."
