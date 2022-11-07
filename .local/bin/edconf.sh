#!/bin/bash



# Dmenu script for editing some of my more frequently edited config files.


declare options=("alias
bash
i3config
i3blocks
profile
sxhkd
vifm
xresources
xprofile
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -c -g 1 -l 10 -nb '#000000' -sb '#947cc3' -fn 'JetBrains Mono Medium-12' -p 'Edit config files: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alias)
		choice="$HOME/.config/aliasrc"
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	i3config)
		choice="$HOME/.config/i3/config"
	;;
	profile)
		choice="$HOME/.profile"
	;;
	sxhkd)
	        choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	vifm)
		choice="$HOME/.config/vifm/vifmrc"
	;;
	i3blocks)
		choice="$HOME/.config/i3blocks/config"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
        xprofile)
		choice="$HOME/.xprofile"
	;;
	*)
		exit 1
	;;
esac
geany  "$choice"
