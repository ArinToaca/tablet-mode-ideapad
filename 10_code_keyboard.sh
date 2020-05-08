FILE=/var/log/syslog
PATTERN="ideapad_laptop: Unknown event: 10"
while inotifywait -e modify $FILE
do 
	if [[ $(tail -1 $FILE | grep "$PATTERN") ]];then
		value_1=$(gsettings get org.gnome.desktop.a11y.applications screen-keyboard-enabled)
	value_2=$(gsettings get org.gnome.desktop.interface toolkit-accessibility)

	if [[ $value_1 == "false" ]];then
		value_1="true"
	else
		value_1="false"
	fi

	if [[ $value_2 == "false" ]];then
		value_2="true"
	else
		value_2="false"
	fi

	gsettings set org.gnome.desktop.a11y.applications screen-keyboard-enabled $value_1
	gsettings set org.gnome.desktop.interface toolkit-accessibility $value_2	
	fi
done
