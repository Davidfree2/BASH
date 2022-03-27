#!/bin/bash

#use bash <this file name> to run this file in the command line
#OR
#use chmod +x <this file name> to make this file executable
#that way you only have to type ./<this file name> to execute the file

random_number=${RANDOM:0:1}

echo "Random number guesser!"

read -p "What is the random number you would like to guess? Please pick a number between 0 and 9" user_guess

function number_guess(){
	if [ ${random_number} == ${user_guess} ]
	then
		echo "You guessed right! Congradulations ${random_number} is equal to ${user_guess}"
	else
		echo "You guessed wrong! Try again."
		read -p "What is the random number you would like to guess? Please pick a number between 0 and 9" user_guess
		number_guess
	fi
}

number_guess
