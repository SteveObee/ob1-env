#
# ~/.bashrc
#
SERVICE="tmux"

if [[ $DISPLAY ]]; then
    # If not running interactively, do not do anything
    [[ $- != *i* ]] && return
fi

alias ls='ls --color=auto'

# Old prompt
# PS1='[\u@\h \W]\$ '

color_prompt=yes

PS1='\[\033[1;34m\]/\W >\[\033[0m\] '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

SCRIPTS=~/.scripts

PATH=$SCRIPTS:$PATH

tnew () {
    tmux new-session -d -s $1;
}

export TERM=screen-256color
