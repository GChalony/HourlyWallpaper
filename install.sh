#!/bin/bash
# Copy stuff to the right location

cp HourlyWallpaper $HOME/.config/
cp wallchanger $HOME/.local/bin/

sudo cp wallchanger.cron /etc/cron.d/wallchanger