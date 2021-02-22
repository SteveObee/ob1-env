#!/bin/bash
sudo systemctl stop fcron;
ps aux  |  grep '[r]clone'  |  awk '{print $2}'  |  xargs sudo kill -9;
rclone -v sync /home/steve/Projects remote:bup_arch --filter-from /home/steve/.scripts/filter-linux.txt  --skip-links --delete-excluded --transfers 4 --cache-workers 8 --cache-tmp-wait-time 5m --buffer-size 256M --drive-use-trash=false;
rclone -v sync /home/steve remote:bup_arch_home --filter-from /home/steve/.scripts/filter-file.txt --drive-use-trash=false --skip-links  --transfers 4 --cache-workers 8 --cache-tmp-wait-time 5m --buffer-size 256M &&
sudo systemctl start fcron;   

