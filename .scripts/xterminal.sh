#!/bin/bash
SERVICE="tmux"

if pgrep "$SERVICE"  >/dev/null
    then
        xterm -T "Arch" -e "tmux -2 a" 
    else
        xterm -T "Arch" -e "tmux -2"
fi
