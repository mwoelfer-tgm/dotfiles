#!/bin/sh

# Terminate already running bar instances
killall -q polybar

NAME="example"
echo $NAME

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybars on multiple monitors
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload $NAME &
  done
else
  polybar --reload $NAME &
fi
