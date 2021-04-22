#!/bin/bash
xterm -T "Obeedock IDE" -e "cd ~/Projects/obeedock && \
          docker-compose exec --user=obeedock wspace tmux -2"

