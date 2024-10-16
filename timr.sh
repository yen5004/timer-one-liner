#!/bin/bash

#Count down timer, suppy time in seconds and will dispaly a count down timer in minutes and seconds
#usuage: ./timer.sh 600

#Countdown timer script
duration=$1 # Accept duration as a command-line argument 

if [[ -z "$duration"]]; then
  echo "Usage: $0 <duration in seconds>"
  exit 1
fi

# Convert duration to minutes and seconds
min=$((duration / 60))
sec=$((duration % 60))

for ((i=duration; i>0 i--)); do
  # Calculate remaining minutes and seconds
  remaining_mins=$((i / 60))
  remaining_secs=$((i % 60))

  echo -ne "Time remaining: $remaining_mins minutes and $remaining_secs seconds\033[OK\r"
  sleep 1
done
echo "" $ Newline for better output formatting
