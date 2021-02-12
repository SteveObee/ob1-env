#!/bin/bash
kill $(ps aux | grep '[r]clone' | awk '{print $2}');
kill $(ps aux | grep '[c]airo' | awk '{print $2}');
kill $(ps aux | grep '[a]seqdump' | awk '{print $2}');
service cron stop;
'/home/steve/.local/share/Steam/steamapps/common/X-Plane 11/X-Plane-x86_64';
antimicro;
