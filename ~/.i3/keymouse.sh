#!/usr/bin/bash
kill $(pidof keynav)
keynav
sleep 0.3
xdotool key "ctrl+semicolon"
