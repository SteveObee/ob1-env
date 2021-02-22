#!/bin/bash
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --output VGA-1-1 --right-of DVI-I-1
