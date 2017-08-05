# mate-random-background-slideshow
A random background slideshow script for the MATE desktop. Work in progress.
## Background
I have thousands of wallpapers and couldn't find a script to write an xml file.
This (clunky) fix was reached after tweaking [this](https://ubuntuforums.org/showthread.php?t=329164&page=2&p=2039814#post2039814) script intended for Gnome and found [this](https://stackoverflow.com/questions/10374520/gsettings-with-cron) solution to resolve an issue with changing dconf settings in cron.
## Usage
Tested in Debian only.

1. Add randombg.sh to a preferred location (i.e. ~/.scripts/)
2. Change the background folder to your wallpapers directory, if different than /usr/share/backgrounds
3. Add the following to a new cronjob in /etc/cron.d/ - remember to replace 'user' with your username
```
# Wallpaper slideshow
*/5 * * * * user /bin/bash /home/user/.scripts/randombg.sh
```
4. Reload cron and enjoy.
