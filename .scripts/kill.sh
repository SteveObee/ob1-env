#!/bin/bash
kill $(ps aux | grep '[r]clone' | awk '{print $2}');
service cron stop;
