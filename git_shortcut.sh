#!/bin/bash

#this file must be sourced. Use source <this file name> 


read -p "Type git commit message. Or type N for general message" git_message

echo "..."

echo "git adding all"

sleep 1

git add .

function gitCommit(){
	if [ ${git_message} == "n" ] || [ ${git_message} == "N" ]
	then
		echo "git commit -m 'general update'"
		git commit -m "general update"
	else
		echo "git commit -m ${git_message}"
		git commit -m "${git_message}"
	fi
}

gitCommit

sleep 1

echo "Success! succesfully added and commited"
