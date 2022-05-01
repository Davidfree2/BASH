#!/bin/bash




function update_system() {
    echo "updating system packages at /etc/apt/sources"
    sleep 1
    sudo apt-get update
}

function upgrade_system() {
    echo "upgrading all packages in list"
    sleep 1
    sudo apt-get upgrade
}

function main() {
    update_system
    sleep 1
    upgrade_system
    echo "finished"
}

main
