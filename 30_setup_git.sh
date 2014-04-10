#!/bin/bash

set -e

echo `basename $0`

rm -f ~/.gitconfig

cp files/git/.gitconfig ~
