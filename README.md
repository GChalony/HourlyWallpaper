# Hourly Wallpaper

This program is a simple script meant to change the wallpaper based on the hour of the day.

To change wallpaper programmatically, use
```bash
gsettings set org.gnome.desktop.background picture-uri file:///path/to/image.jpg
```

# Usage

Create a directory with 24 images, named `00.jpg`, `01.jpg`, `02.jpg`.. `23.jpg`. The image extension doesn't matter, and you can add any prefix or suffix to the name as long as they contain no number.
If you don't want to change images _every_ hour, just add the ones you want. The wallpaper won't change if there is no image for some hour.

Edit path in the `HourlyWallpaper` config file to point to that directory.

Install running `./install.sh` (will prompt for root password).

You can test that it works running `wallchanger`.

