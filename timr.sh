#!/bin/bash

#Count down timer, suppy time in seconds and will dispaly a count down timer in minutes and seconds
#usuage: ./timer.sh 600

#Countdown timer script
duration=$1 # Accept duration as a command-line argument 

if [[ -z "$duration" ]]; then
  echo "Usage: $0 <duration in seconds>"
  exit 1
fi

# for loop for execution of code
for ((i=duration; i>0; i--)); do
    # Calculate remaining minutes and seconds
    remaining_minutes=$((i / 60))
    remaining_seconds=$((i % 60))
    
    echo -ne "Time remaining: $remaining_minutes minutes and $remaining_seconds seconds\033[0K\r"
    sleep 1
done
echo ""  # Newline for better output formatting
