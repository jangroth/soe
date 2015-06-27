#!/bin/bash

find_git_branch() {
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch='detached*'
    fi
    git_branch="($branch)"
  else
    git_branch=""
  fi
}

find_git_dirty() {
  local status=$(git status --porcelain 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_dirty='*'
  else
    git_dirty=''
  fi
}

function p
{
    cd $PROJECTS_HOME/$1
}

_p()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts=`ls -la $PROJECTS_HOME | grep -e '^d' | awk '{print $9}' | grep -v '^\.'`
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
}

function cheat
{
    vim $CHEAT_SHEETS_HOME/$1
}

_cheat()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts=`find $CHEAT_SHEETS_HOME -maxdepth 1 -name "*.txt" -type f -printf "%f\n"`
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
}
complete -F _p p
complete -F _cheat cheat
