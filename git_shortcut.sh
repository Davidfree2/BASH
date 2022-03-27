#!/bin/bash

#this file must be sourced. Use source <this file name> 

read -p $'Type git commit message. Or type N for general message\n' git_message

echo $'\n...'

echo $'\ngit adding all\n'

sleep 1

git add .

function gitCommit(){
	if [ ${git_message} == "n" ] || [ ${git_message} == "N" ]
	then
		echo $'\ngit commit -m general update'
		git commit -m "general update"
	else
		echo $'\ngit commit -m ${git_message}'
		git commit -m "${git_message}"
	fi
}

gitCommit

sleep 1

echo $'\nSuccess! succesfully added and commited'

read -p $'\nPush commit to repo? Type N to deny push, or Y to push\n' git_push_message

function gitPush(){
	if [ ${git_push_message} == "y" ] || [ ${git_push_message} == "Y" ]
	then
		echo $'\ngit pushing to repo press <ctrl + c> to cancel\n'
		sleep 5
		git push
	else
		echo $'\nupdates NOT pushed'
	fi
}

gitPush

function gitStatus(){
	echo $'\n\n\ncurrent git status is'
	git status
}

gitStatus
