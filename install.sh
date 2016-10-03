#!/bin/bash
## Aptup installer

## CHECK ROOT (fix path to include lolcat)
if [ "$UID" -ne "0" ]; then
   echo -e "\nError: YOU MUST BE ROOT TO USE THIS!"
   echo -e "Tip: Precede your command with 'sudo'\n"
   exit 1
fi

## Fetch latest script from github & make executable
wget -O /usr/bin/aptupdater https://raw.githubusercontent.com/Yo-kai-Sei-shin-kage/aptupdater/master/aptupdater
chmod +x /usr/bin/aptupdater

## Create logs directory
mkdir /var/lib/aptupdater
