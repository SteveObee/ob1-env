#!/bin/bash
aseqdump -p "nanoKONTROL2" | \
while IFS=" ," read src ev1 ev2 ch label1 data1 label2 data2 rest; do
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 64 127" ) xdotool search "Mozilla Firefox" key Down ;;
    esac
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 48 127" ) xdotool search "Mozilla Firefox" key Up ;;
    esac
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 58 127" ) xdotool key Super_L+Shift_L+q ;;
    esac 
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 59 127" ) xdotool key Super_L+q ;;
    esac     
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 61 127" ) xdotool key Super_L+Shift+semicolon ;;
    esac
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 60 127" ) xdotool key Control_L+Next ;;
    esac
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 62 127" ) xdotool key Super_L+semicolon ;;
    esac          
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 43 127" ) xdotool search "Mozilla Firefox" key Left ;;
    esac
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 44 127" ) xdotool search "Mozilla Firefox" key Right ;;
    esac
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 41 127" ) xdotool search "Mozilla Firefox" key space ;;
    esac
    case "$ev1 $ev2 $data1 $data2" in
        "Control change 45 127" ) xdotool search "Mozilla Firefox" key f ;;
    esac
done
