#!/bin/bash

set -xe

current_dir="$(dirname "$0")"
. "${current_dir}/config.sh"


$(${current_dir}/15_setup_zsh.sh all)
$(${current_dir}/40_setup_git.sh all)
$(${current_dir}/50_setup_aws.sh all)
