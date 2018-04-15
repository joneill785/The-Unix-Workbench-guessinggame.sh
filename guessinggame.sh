#!/usr/bin/env bash

clear
function Introduction {
  echo "Hi Stranger, would you like to play a game?"
  echo "Yes, really?..... Please guess how many files are in the current directory"
}


function Right {
  echo "Yes, that is it. Congrats!!!"
  echo "Thanks for playing"
}

Introduction

FileNumber=$(ls -1 | wc -l)

until [[ $response -eq $FileNumber ]]; do
	read response
	if [[ $response -gt $FileNumber ]]
	then
		echo "Sorry $response to higher please try again."
	elif [[ $response -lt $FileNumber ]]
	then
		echo "$response, Sorry to low. Please try again"
	fi
done

echo "Congrats! You guessed correctly!"
