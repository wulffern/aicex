#!/usr/bin/env bash

alias sc='source ~/.bashrc'
alias xx='xterm -fg white -bg gray19 &'

function set_ps(){
local l_for="\[\033[0;36m\]";
local l_back="\[\033[0;00m\]";

local PS_1="$l_for\u@\W\\$ $l_back "
PS1=$PS_1
}

case $TERM in
	xterm*|rxvt|eterm)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
		set_ps;
		;;
	screen)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
		;;
esac

[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"
[ -e "$DIR_COLORS" ] || DIR_COLORS=""
eval "`dircolors -b $DIR_COLORS`"

export PDK_ROOT=/opt/pdk/share/pdk

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/eda/lib
export PATH=/opt/eda/bin:/opt/eda/python3/bin:$HOME/.local/bin:$PATH
