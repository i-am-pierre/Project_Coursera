# !/usr/bin/env bash
# File: guessinggame.sh

nbfiles=$(find . -maxdepth 1 -type f | wc -l)

function strict_compare {
if [[ $1 -gt $2 ]]
  then
  echo "Too high"
  else 
  echo "Too low"
fi
}

echo "Guess the Number of files in the current directory?"
echo "Make a guess: "
read guess

while [[ $guess -ne $nbfiles ]]
do
  strict_compare $guess $nbfiles
  echo "Make a better guess:"
  read guess
done
echo "Congratulations"
