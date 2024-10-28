#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias cls='clear'
alias divljinna='shutdown 00'
alias ff='fastfetch'
alias grep='grep --color=auto'
alias gs='git status'
alias gp='git push origin main'
alias ga='git add .'
alias ls='ls --color=auto'
PS1='\[\e[38;5;196m\][\[\e[38;5;153m\]\u\[\e[0m\]@\[\e[38;5;223m\]\h\[\e[0m\] \[\e[92m\]\W\[\e[38;5;196m\]]\[\e[38;5;201m\]\$\[\e[0m\] '
