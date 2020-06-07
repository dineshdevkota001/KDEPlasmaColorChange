#!/bin/bash
update=$(tail -n 1 $HOME/.config/reverso/colormode.rc)
while :
do
# check for the time condition
hour=$(date +%H%M)
dirtybit=0


# if else condition check
if ([[ $hour < "1800" ]] && [[ $hour > "0600" ]])
    then
    if [ $update != lightmode ]
            then
            echo changeddirtybit1
            update=lightmode
            dirtybit=1
        fi
    else
        if [ $update != darkmode ]
            then
            echo changeddirtybit2
            update=darkmode
            dirtybit=1
        fi
    fi

# update if necessary
if ([ $dirtybit -eq 1 ])
    then
    lookandfeeltool -a $update
    dirtybit=0
    echo $update > $HOME/.config/reverso/colormode.rc
    notify-send -i ~/.config/reverso/logo.jpg -a Reverso "The theme has been changed to $update "
    fi
# sleep for 20 mins
sleep 20m
done &
