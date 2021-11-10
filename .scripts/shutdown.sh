#!/bin/bash
# ---
# Lucy's Rice Field
# https://github.com/lucys-ricefield
# Base power menu script
# ---

ACTION=$(echo -e "Shutdown\nSuspend\nReboot\nLogoff" | rofi -dmenu -p "power")

if [[ $ACTION == "Shutdown" ]] ;
	then systemctl poweroff
elif [[ $ACTION == "Suspend" ]] ;
	then systemctl suspend
elif [[ $ACTION == "Reboot" ]] ;
	then systemctl reboot
elif [[ $ACTION == "Logoff" ]] ;
	then i3-msg exit
fi
