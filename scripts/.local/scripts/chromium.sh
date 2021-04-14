#!/bin/bash
grep "dark-theme=true" $HOME/.config/gtk-3.0/settings.ini 1>/dev/null

if [ $? -eq 0 ]; then
  chromium --force-dark-mode &
else
  chromium &
fi
