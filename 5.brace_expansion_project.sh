#!/bin/bash

# make 3 directories for storing log file for each day of the month

echo "creating log files ........"
 
sleep 2

mkdir ./{january/{01..31},february/{01..28},march/{01..31}}
touch  ./{january/{01..31}/log.daily,february/{01..28}/log.daily,march/{01..31}/log.daily}
