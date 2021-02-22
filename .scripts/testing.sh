#!/bin/bash
sudo service cron stop;
ps aux  |  grep '[r]clone'  |  awk '{print $2}'  |  xargs sudo kill -9;
echo 'Worked!';
echo 'Worked again!';
rclone -v sync /home/steve/Projects remote:bup_linux --skip-links --delete-excluded --transfers 40 --checkers 16 --cache-workers 8 --cache-tmp-wait-time 5m --buffer-size 256M --exclude */node_modules/** --exclude '*/wp-admin/**' --exclude '*/wp-includes/**' --exclude '*/vendor/**' --drive-use-trash=false;
rclone -v sync /home/steve remote:bup_home --filter-from /home/steve/.scripts/filter-file.txt --drive-use-trash=false --skip-links  --transfers 40 --checkers 16 --cache-workers 8 --cache-tmp-wait-time 5m --buffer-size 256M &&
sudo service cron start;    


