#!/bin/bash
#version 1.0.0

#this file must be sourced. Use source <this file name> 

#-----------------------------------functions--------------------------------

function gitCommit(){
	if [ "${git_message}" == "n" ] || [ "${git_message}" == "N" ]
	then
		echo "git commit -m general update"
		git commit -m "general update"
	else
		echo $'git commit -m ${git_message}\n'
		git commit -m "${git_message}"
	fi
}

function gitPush(){
	if [ ${git_push_message} == "y" ] || [ ${git_push_message} == "Y" ]
	then
		echo $'\ngit pushing to repo press <ctrl + c> to cancel\n'
		sleep 3 
		git push
	else
		echo "updates NOT pushed"
	fi
}

function gitStatus(){
	echo $'\ncurrent git status is:'
	git status
}

function main(){

	read -p $'Type git commit message. Or type N for general message:\n' git_message
	
	echo $'\ngit adding all\n'
	
	sleep 1
	
	git add .
	
	gitCommit
	
	sleep 1
	
	echo $'\nSuccess! succesfully added and commited'
	
	read -p $'\nPush commit to repo? Type N to deny push, or Y to push:\n' git_push_message
	
	gitPush
	
	gitStatus

}

#-----------------------------------functions end--------------------------------

main
