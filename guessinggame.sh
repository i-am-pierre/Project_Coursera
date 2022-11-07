# !/usr/bin/env bash
# File: guessinggame.sh

nbfiles=$(find . -maxdepth 1 -type f | wc -l)

function strict_compare {
if [[ $1 -gt $2 ]]
  then
  echo "Too High, try again"
  else 
  echo "Too Low, try again"
fi
}

echo "Guess the Number of files in the current directory"
read guess

while [[ $guess -ne $nbfiles ]]
do
  strict_compare $guess $nbfiles
  read guess
done
echo "Congratulations"
