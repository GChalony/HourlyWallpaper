#!/bin/bash
# Copy stuff to the right location

if [[ ! -f "$HOME/.config/HourlyWallpaper" ]]; then 
	cp HourlyWallpaper $HOME/.config/
fi
cp wallchanger $HOME/.local/bin/

sudo cp wallchanger.cron /etc/cron.d/wallchanger

