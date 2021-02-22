#!/bin/bash
FILE=$1
touch $FILE &&
code -r $FILE
