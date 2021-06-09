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

vagrant_test () {
  dirname=${PWD##*/}

  clear &&
  (cd /home/steve/Homestead &&
  vagrant ssh -c "cd $dirname && vendor/bin/phpunit --filter $@ 2>/dev/null | head -n 15";)

  inotifywait -mr -e modify -e create -e delete -q app database resources routes tests |
    while read path action file; do
      clear &&
      cd /home/steve/Homestead &&
      vagrant ssh -c "cd $dirname && vendor/bin/phpunit --filter $@ 2>/dev/null | head -n 15";   
    done
}

php_artisan () {
  dirname=${PWD##*/}

  (cd /home/steve/Homestead &&
    vagrant ssh -c "cd $dirname && php artisan $*")
}

export TERM=screen-256color
