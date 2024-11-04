#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=nano
export EDITOR=$VISUAL

alias cls='clear'
alias divljinna='shutdown 00'
alias ff='fastfetch'
alias ga='git add .'
alias gg='shutdown 00'
alias gp='git push origin main'
alias grep='grep --color=auto'
alias gs='git status'
alias ls='ls --color=auto -a'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
