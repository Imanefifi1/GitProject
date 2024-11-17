#!/bin/bash
guess_number() {
  local correct_number=$(ls -1 | wc -l)
  local guess
  while true; do
    echo "Guess how many files are in the current directory:"
    read guess
    if [ "$guess" -lt "$correct_number" ]; then
      echo "Your guess is too low. Try again."
    elif [ "$guess" -gt "$correct_number" ]; then
      echo "Your guess is too high. Try again."
    else
      echo "Congratulations! You guessed the correct number of files."
      break
    fi
  done
}

guess_number
