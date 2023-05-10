#!/bin/bash
###################################
## devbuntu - setup installation ##
###################################

## Copy dotfiles
./copy.sh

## Update Ubuntu and get standard repository programs
sudo apt update && sudo apt full-upgrade -y

##################
## INSTALLATION ## 
##################
function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

##################
## Applications ##
##################
## apt packages
install curl
install git
install htop
install jq
install tree
install vim
install wget
install terminator
## snap packages
snap install slack 
snap install telegram-desktop
snap install vlc 
snap install spotify 

#################################
## Run all scripts in programs ##
#################################
for f in programs/*.sh; do bash "$f" -H; done

######################
## Get all upgrades ##
######################
sudo apt upgrade -y
sudo apt autoremove -y
