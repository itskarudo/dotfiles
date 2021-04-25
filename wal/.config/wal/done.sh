#!/bin/sh

 . ${HOME}/.cache/wal/colors.sh


bspc config normal_border_color   "$color1"
bspc config active_border_color   "$color2"
bspc config focused_border_color  "$color15"
bspc config presel_feedback_color "$color1"

ln -sf    "${HOME}/.cache/wal/dunstrc"    "${HOME}/.config/dunst/dunstrc"
# Restart dunst with the new color scheme
pkill dunst
dunst &
