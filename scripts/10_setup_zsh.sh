#!/bin/sh
set -e
[ "$DOT_DEBUG" = 'true' ] && set -x

. "$(dirname "$0")/config.sh"

echo 'Configuring zsh...'
confirm_binaries "git" "zsh"

cp -f "${DOT_ROOT}/files/zsh/zshrc" $HOME/.zshrc
cp -f "${DOT_ROOT}/files/zsh/p10k.zsh" $HOME/.p10k.zsh

mkdir -p $HOME/.zsh
cp -f "${DOT_ROOT}/files/shell/shell_aliases" $HOME/.zsh/.shell_aliases
cp -f "${DOT_ROOT}/files/shell/shell_colors" $HOME/.zsh/.shell_colors
cp -f "${DOT_ROOT}/files/shell/shell_functions" $HOME/.zsh/.shell_functions

mkdir -p $HOME/.local/bin
if [ "${DOT_OS}" = "linux" ]; then
    cp -fR "${DOT_ROOT}/files/bin/linux/." $HOME/.local/bin
elif [ "${DOT_OS}" = "darwin" ]; then
    cp -fR "${DOT_ROOT}/files/bin/darwin/." $HOME/.local/bin
fi

# update remote dependencies
if [ "${DOT_REINSTALL}" = "true" ] || [ ! -d "$HOME/.oh-my-zsh" ] || [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    rm -rf $HOME/.oh-my-zsh
    git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
    git clone --depth 1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.oh-my-zsh/custom/fzf
    $HOME/.oh-my-zsh/custom/fzf/install --all --key-bindings --completion --no-update-rc
    git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi

mkdir -p $HOME/.oh-my-zsh/completions
cp -rf "${DOT_ROOT}/files/zsh/completions" $HOME/.oh-my-zsh/completions/_completions

echo "-> See https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k for required fonts."
