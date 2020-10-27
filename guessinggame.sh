#!/usr/bin/env bash
# File: guessinggame.sh

function filecount {
  cnt=$(find . -maxdepth 1 -type f|wc -l)
  echo $cnt
}

count=$(filecount)
echo "Welcome to Guessing game! =)"
echo "Guess the number of files in the directory"
read num

while [[ $count -ne $num ]]
do
  if [[ $count -gt $num ]]
  then
    echo "Oops too small! Try another Guess..."
    read num
  elif [[ $count -lt $num ]]
  then
    echo "Oops too large! Try another Guess..."
    read num
  fi
done

echo "Congratulations! Your guess is correct!"
echo "Have a nice day!"
