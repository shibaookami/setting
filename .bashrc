# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

umask 022
ulimit -c 0

alias vi='vim'


if [ -f ~/.bashrc_local ]; then
    . ~/.bashrc_local
fi
