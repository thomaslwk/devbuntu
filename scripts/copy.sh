#!/bin/bash

####################################
## devbuntu - setup dotfile links ##
####################bas################

## Up from root directory 
cd ..

## Link dotfiles from repo to home 
ln -s ~/devbuntu/.bashrc ${HOME}
ln -s ~/devbuntu/.tmux.conf ${HOME}

ln -s ~/devbuntu/.vimrc ${HOME}
ln -s ~/devbuntu/.vim ${HOME}

