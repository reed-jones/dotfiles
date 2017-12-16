# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#export PATH="$HOME/.yarn/bin:$PATH"
#alias dotfiles='/usr/bin/git --git-dir=/home/reed/.dotfiles/ --work-tree=/home/reed'
source ~/.common_sh_profile
