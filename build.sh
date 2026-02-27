#!/bin/zsh
cd build
cmake ..
make
./RTWeekend > img.ppm
wezterm imgcat --width 80 --height 80 img.ppm
