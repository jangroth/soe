#!/bin/sh
set -e
[ "$DOT_DEBUG" == 'true' ] && set -x

. "$(dirname "$0")/config.sh"

echo 'Configuring python...'
confirm_binaries "python" "python3" "pipenv"

# update remote dependencies
if [ "${DOT_REINSTALL}" = "true" ] || [ ! -d "$HOME/.pyenv" ]; then
    rm -rf "$HOME/.pyenv"
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

echo "-> python setup finished"
