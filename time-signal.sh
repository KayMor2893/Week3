#!/bin/bash
# save as time-signal.sh
# gives no chime when minutes are less than 20, one chime if greater than 20 but less than 40 and two chimes if greater than 40 with one second sleep
time=$(date +%M)
minute=20
minutes=40
if test $time -lt $minute; then
        sleep 0         # sleep for zero second and move onto next test
elif test $time -ge $minute && test $time -lt $minutes; then
        echo -e "\a" # one chime
        sleep 0
        count=1
else # that is for all other possibilities 
        echo -e "\a" #one chime
        sleep 1 #one sleep
        echo -e "\a" #one chime
        count=2
fi
