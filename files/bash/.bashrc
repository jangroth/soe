# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ -f $HOME/.bash_colors ]; then
    source $HOME/.bash_colors
fi
if [ -f $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi
if [ -f $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi
if [ -f $HOME/bin/tmuxinator.bash ]; then
    source $HOME/bin/tmuxinator.bash
fi

# history
#
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
HISTTIMEFORMAT='%F %T '
HISTSIZE=99999
HISTFILESIZE=99999

PROMPT_COMMAND="history -a ; find_git_branch; find_git_dirty;"
PS1="\[$txtcyn\]\u@\h\[$txtrst\] \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)

export EDITOR="vim"
export JAVA_HOME="$HOME/data/dev/java/java8"
export PROJECTS_HOME="$HOME/data/dev/projects"

USER_BIN="/home/jan/bin"
JAVA_BIN="${JAVA_HOME}/bin"

M2_BIN="${M2_HOME}/bin"
GRADLE_BIN="${GRADLE_HOME}/bin"
ANDROID_SDK="/data/dev/android/android-sdk"

PATH=$PATH:$USER_BIN:$JAVA_BIN:$M2_BIN:$GRADLE_BIN:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools
