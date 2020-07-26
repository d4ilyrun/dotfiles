#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lsa="ls -al"

PS1='[\u@\h \W]\$ '

setxkbmap fr
