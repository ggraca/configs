#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\033[38;5;105m\u \033[1;38;5;87m\W\033[38;5;105m: \e[0m'
#PS1="\[\033[01;32m;\]MyPrompt: \[\033[0m\]"

export NVM_DIR="/home/ggraca/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export VISUAL="subl3"