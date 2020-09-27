#!/bin/sh
set -e

. "$(dirname "$0")/config.sh"

export DOT_REINSTALL=false
export DOT_DEBUG=false

"${DOT_ROOT}/scripts/10_setup_zsh.sh"
"${DOT_ROOT}/scripts/20_setup_tmux.sh"
"${DOT_ROOT}/scripts/30_setup_vim.sh"
"${DOT_ROOT}/scripts/40_setup_git.sh"
