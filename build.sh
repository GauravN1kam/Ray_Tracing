#!/bin/zsh
cd build
cmake ..
make
./RTWeekend > img.ppm
if [[ -n "$KITTY_PID" ]]; then
	kitten icat img.ppm
elif [[ -n "$WEZTERM_PANE" ]]; then
	wezterm imgcat --width 80 --height 80 img.ppm
fi
