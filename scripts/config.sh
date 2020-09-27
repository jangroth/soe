#!/bin/sh
set -e
[ "$DOT_DEBUG" == 'true' ] && set -x

confirm_binaries ()
{
for x in "$@"; do
  if $(which "${x}" 1>&1 >/dev/null); then
    echo "...confirming: $x"
  else
    echo "Missing binary: $x. Exiting." 
    exit 0
  fi
done
}

case "$(uname -s)" in
Darwin)
    export DOT_OS='darwin'
    ;;
Linux)
    export DOT_OS='linux'
    ;;
CYGWIN* | MINGW32* | MSYS* | MINGW*)
    export DOT_OS='windows'
    ;;
*)
    export DOT_OS='other'
    ;;
esac

this_folder="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
export DOT_ROOT="$(dirname "$this_folder")"

