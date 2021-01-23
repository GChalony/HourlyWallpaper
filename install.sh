#!/bin/bash
# Copy stuff to the right location

cp HourlyWallpaper $HOME/.config/
cp wallchanger $HOME/.local/bin/

sudo ln -f -s $HOME/.local/bin/wallchanger /etc/cron.hourly/