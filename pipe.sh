#!/bin/bash

# Set volume to 50%
pactl -- set-sink-volume 0 80%

while true; do
    # Play sound
    aplay pipe.wav

    # Generate random sleep interval between 60 and 900 seconds (1 to 15 minutes)
    sleep_time=$((RANDOM % 240 + 60))
    
    # Sleep for the random interval
    sleep $sleep_time
done
