#!/bin/bash
#dmenu emoji to clipboard selector/search

grep -v "#" ~/.config/dmenu/emoji |
	 dmenu -i -l 20 -fn "Agave Nerd Font Mono-14" | 
		awk '{print $1}' | 
			tr -d '\n' | xclip -selection clipboard

pgrep -x dunst >/dev/null && notify-send "$(xclip -o -selection clipboard) copied to clipboard"



