#!/bin/bash
xterm -T "Laradock IDE" -e "cd ~/Projects/obeedock && \
          docker-compose exec --user=obeedock wspace tmux -2"

