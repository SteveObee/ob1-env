#!/bin/bash
RESULT=$(ps aux | grep '[r]clone')

if [ "${RESULT:-null}" = null ]; then
    /home/steve/.scripts/rclone.sh;    
fi


