# KDEPlasmaColorChange
A simple bash script to change the theme of KDE Plasma Desktop Environment dynamically.

Do note that this may not work for you. I made this just for myself in a short time and am not hoping to make more. This disables your ability to change the theme of your desktop. For that to work please kill the process colorchange.sh and move it from ~/.config/autostart/ elsewhere.


#Uninstallation
To uninstall just remove the autostart file in ~/.config/autostart
                        and darkmode and lightmode folder in ~/.local/share/plasma/look-and-feel/
                        
#Editing The themes to change in the time
edit the defaults in {darkmode or lightmode}/content/defaults.
Sample defaults is in defaults.sampless
