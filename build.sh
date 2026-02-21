#!/bin/zsh
cd build
cmake ..
make
./RTWeekend > img.ppm
wezterm imgcat --width 50 --height 50 img.ppm
