# Luvwall - Wallpaper switching made easy

luvwall is a posix shell script (sort of wallpaper manager) that aims to automate the tedious process of finding new wallpapers. If you have pywal it also can set automatically your terminal colors.

# what changes does this fork make?

* remove lines relative to gnome, kde, xfce native wallpaper setter utility
* added nasa image of the day, wallhaven, bing, pexels, pixabay (all these require jq)
* (minor) the image by default is saved on the ram wich does not constant write hard drives when specially you use this utility very often. (This can be changed, of course)
* you can customize it by editing luvwall.conf. this is shown as an example, just place it in ~/.config/

I've just modified it a little bit for my use case.

![Preview](preview.png)

## Install
```
git clone --depth=1 https://github.com/khonsaloh/luvwall
cd luvwall
./make.sh install
```
or just put the script in the path
## Uninstall

```
./make.sh uninstall
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

