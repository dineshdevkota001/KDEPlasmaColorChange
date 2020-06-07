#!/usr/bin/bash
 
#first copy the folders dark-mode and light-mode to /home/din/.local/share/plasma/look-and-feel
mkdir $HOME/.local/share/plasma/look-and-feel/
cp -r *mode $HOME/.local/share/plasma/look-and-feel/

#now copy colorchange.sh to the autostart directory
cp colorchange.sh $HOME/.config/autostart/

# copy color setting to a position
mkdir $HOME/.config/reverso/
echo lightmode > $HOME/.config/reverso/colormode.rc
cp logo.jpg $HOME/.config/reverso/
