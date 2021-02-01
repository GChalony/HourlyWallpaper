# Hourly Wallpaper

This program is a simple script meant to change the wallpaper based on the hour of the day.

To change wallpaper programmatically, use
```bash
gsettings set org.gnome.desktop.background picture-uri file:///path/to/image.jpg
```

## Usage

Create a directory with 24 images, like such: 

    ~/Pictures/MyHourlyPictures
      |_  01.jpg
      |_  02.jpg
      | ...
      |_  24.jpg

 - The image extension doesn't matter
- You can add any prefix or suffix to the name as long as they contain no number.
 - If you don't want to change images _every_ hour, just add the ones you want. The wallpaper won't change if there is no image for some hour.

Edit the `~/.config/HourlyWallpaper` config file to point to make `PATH_TO_WALLPAPER_FOLDER=` point to that directory.

Install running `./install.sh`.

## How it works

 - `wallchanger` is the executable in charge of changing the wallpaper. It loads the config file, looks for an image corresponding to the current hour, and if foud sets it as wallpaper.
 - `HourlyWallpaper` is the config file (used to specify the path to the folder containing the images).
 - The executable can be run from 4 different places: 
    - From cron (adds a cron entry, see `wallchanger.cron`).
    - At startup (TODO), see `wallchanger.desktop`.
    - When the screen unlocks (TODO)
        - This is a bit tricky, requires to run a daemon (started as startup) monitoring the dbus to catch unlock signal, and then call `wallchanger`.
