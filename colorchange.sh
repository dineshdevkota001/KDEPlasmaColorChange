#!/bin/bash
update=none
while :
do
# check for the time condition
hour=$(date +%H%M)
dirtybit=$false
# if else condition check
if ([[ $hour < "1800" ]] && [[ $hour > "0600" ]])
    then
    if [ "$update" != lightmode ]
            then
            update=lightmode
            dirtybit=$true
        fi
    else
        if [ "$update" != darkmode ]
            then
            update=darkmode
            dirtybit=$true
        fi
    fi
# update if necessary
if ($dirtybit)
    then
    lookandfeeltool -a $update
    dirtybit=$false
    fi
# sleep for 10 mins
sleep 20m
done &