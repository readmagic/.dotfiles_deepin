#!/bin/bash
num=`amixer -M get Master | grep 'Left: Playback' | awk '{match($0,/\[[0-9]+/,a);print a[0]}'`;num=${num:1};((num+=10));amixer -M set Master ${num}'%';unset num;
