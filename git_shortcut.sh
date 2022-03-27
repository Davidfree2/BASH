#!/bin/bash
#this file must be sourced. Use source <this file name> 

read -p "Type git commit message. Or type N for general message" git_message

echo "..."

echo "git adding all"

git add .

function gitCommit(){
	if [ ${git_message} == "n" || "N" ]
	then
		echo "git commit -m 'general update'"
		git commit -m "general update"
	else
		echo "git commit -m ${git_message}"
		git commit -m "${git_message}"
	fi
}

gitCommit

echo "Success! succesfully added and commited"
