#!/bin/bash

HL_BG="#597bc5"
HL_FG="#ffffff"

rofi -combi-modi window,drun -show combi -seperator-style none \
    -color-window "#3b3b3b, #3b3b3b, #3b3b3b" \
    -color-normal "#3b3b3b, #adadad, #3b3b3b, $HL_BG, $HL_FG" \
    -color-active "#3b3b3b, #adadad, #3b3b3b, $HL_BG, $HL_FG"



