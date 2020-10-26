#!/bin/sh
set -e
[ "$DOT_DEBUG" = 'true' ] && set -x

. "$(dirname "$0")/config.sh"

echo 'Configuring git...'
confirm_binaries "git"

cp -rf "${DOT_ROOT}/files/git/gitconfig" $HOME/.gitconfig

# update remote dependencies
if [ "${DOT_REINSTALL}" = "true" ] || [ ! -f "$HOME/.vim/autoload/pathogen.vim" ]; then
    mkdir -p $HOME/.zsh
    curl -LSso $HOME/.zsh/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    curl -LSso $HOME/.zsh/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
fi

echo "-> git setup finished, use 'git alias' to see configured aliases"
