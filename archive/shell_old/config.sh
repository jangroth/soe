#!/bin/sh

platform='unknown'
unamestr=`uname`
if [ "$unamestr" = 'Linux' ]; then
   platform='linux'
elif [ "$unamestr" = 'Darwin' ]; then
   platform='darwin'
fi

export PLATFORM=$platform

confirm_binaries ()
{
for x in $1; do
  if $(which $x 1>&1 >/dev/null); then
    echo "...confirming: $x"
  else
    echo "Missing binary: $x. Exiting." 
    exit 0
  fi
done
}

print_info_text ()
{
    echo "***************************"
    echo `basename $0`
    echo
    echo "Required:"
    echo -e "\t $1"
    echo "***************************"
}
