#!/bin/bash
rsync -aAXv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found","node_modules","vendor"} / /mnt/LinBup/ArchBup
