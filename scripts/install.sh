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

#################################
## Run all scripts in programs ##
#################################
for f in programs/*.sh; do bash "$f" -H; done

######################
## Setup Git Prompt ## 
######################
curl -o ~/.config/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

######################
## Get all upgrades ##
######################
sudo apt upgrade -y
sudo apt autoremove -y

#####################
## Create bins dir ##
#####################
cd ..
mkdir bins 
