#! /bin/bash

# Load .Xresources file to set terminal color.
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Run i3 window manager.
exec i3
