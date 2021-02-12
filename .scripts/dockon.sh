#!/bin/bash
xterm -T "Laradock IDE" -e "cd ~/Projects/laradock && \
          docker-compose exec --user=laradock workspace tmux -2"

