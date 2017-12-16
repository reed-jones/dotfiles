#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# load Xresources, colours, fonts etc
xrdb ~/.Xresources &

compton --config $HOME/.config/compton/compton.conf &

# restore last used feh backgound
# feh --bg-fill -no-xinerama image.png
~/.fehbg &

# status bar/ systray
#tint2 &

# Simple X HotKey Daemon
sxhkd &

# Launch Polybar
~/.config/polybar/launch.sh

# finally start window manager
exec bspwm

