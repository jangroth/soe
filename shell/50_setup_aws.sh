#!/bin/sh

set -xe

current_dir="$(dirname "$0")"
. "${current_dir}/config.sh"

echo 'Configure aws cli'
confirm_binaries "aws jp jq"

COMPLETE_UPDATE=false
if [ "$1" = 'all' ]; then
  COMPLETE_UPDATE=true
fi

aws_version=$(aws --version | awk -F/ '{print $2}')
case $aws_version in 1.*)
  echo '...consider updating to aws cli v2'
esac

AWS_CLI_HOME="${HOME}/.aws/cli"

[ -f "$AWS_CLI_HOME/alias" ] && rm -f $"$AWS_CLI_HOME/alias"

mkdir -p $AWS_CLI_HOME
cp -r "${current_dir}/../files/aws/alias" "${AWS_CLI_HOME}/alias"
