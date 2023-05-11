#!/bin/bash 

##########################
## POKEMON-COLORSCRIPTS ##
##########################
echo "🐁 Installing pokemon-colorscripts"
cd ../bins
git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git
cd pokemon-colorscripts
sudo ./install.sh
pokemon-colorscripts
