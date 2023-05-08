#!/bin/bash

####################################
## devbuntu - setup dotfile links ##
####################################

## Up from root directory 
cd ..

## Link dotfiles from repo to home 
ln -s .bashrc ${HOME}
ln -s .vimrc ${HOME}
