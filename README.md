# Luvwall - Wallpaper switching made easy

luvwall is a Bash script that aims to automate the tedious process of finding new wallpapers, downloading and switching them via the configs. **Luvwall** can search for specific wallpapers from unsplash or download
a random image from the specified subreddits. If you have pywal it also can set automatically your terminal colors.

# what changes does this fork make?

* remove lines relative to gnome, kde, xfce native wallpaper setter utility (feh or xwallpaper are very small anyway)
* change some deprecated syntax like backsticks in variables instead of S()
* added nasa image of the day, wallhaven, pexels, pixabay (all these requires jq)
* (minor) the image by default is saved on the ram witch not do constant writing to hard drives when specially you use this utility very often. (This can be changed, of course)

I've just modified it a little bit for my use case.

![Preview](preview.png)

## Install
```
git clone https://github.com/khonsaloh/luvwall
sudo make install
```
or just put the script in the path
## Uninstall

```
sudo make uninstall
```

## Usage
```
# To set a random 1920x1080 background
$ luvwall

# Save the current image to ~/Pictures directory
$ luvwall -S

# To specify a desired width or height
$ luvwall -w 1080 -h 720
$ luvwall -w 2560
$ luvwall -h 1440

# To set a wallpaper based on a search term
$ luvwall -s island
$ luvwall -s "sea sunset"
$ luvwall -s sea -w 1080

# To get a random wallpaper from one of the set subreddits
# NOTE: The width/height/search parameters DON'T work with reddit
$ luvwall -l reddit

# To get a random wallpaper from a custom subreddit
$ luvwall -r <custom_reddit>
$ luvwall -r wallpaperdump

# To add custom feh flags
$ luvwall -c <flags>
$ luvwall -c --no-xinerama -r widescreen-wallpaper

# To automatically set the terminal colors
$ luvwall -p

# To update > 1 screens using nitrogen
$ luvwall -n -m <number_of_screens>

# Choose a random background from a directory
$ luvwall -d /path/to/dir

```

## Tips And Tricks
To set a new background every time you reboot your computer add the following to your ```i3/config``` file (or any other WM config)
```
exec_always path/to/script/luvwall
```

To change background every hour launch the following command
```
crontab -e
```
and add the following to the opened file
```
@hourly path/to/script/luvwall
```

## Custom subreddits
To manage custom subreddits just edit the ```subreddits``` file by placing there all your desired communities, one for each newline

