########################
## devbuntu - Config ## 
########################

################
# ## SET UP ## # 
################
export LANG=en_US.UTF-8

###### ZSH HISTORY ######  
# Export history config 
export HISTFILE=$ZSH/.zsh_history 
# Load num of commands zsh will load in mem 
export HISTSIZE=10000
# Number of commands to save on file 
export SAVEHIST=10000
# Remove duplicates 
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

################
# ## EDITOR ## #
################
export EDITOR=/usr/bin/vim


###############
# ## ALIAS ## #
###############
alias ls='ls --color'
alias ll='exa -laF --git'


#################
# ## PLUGINS ## #
#################


#######################
# ## SET VARIABLES ## #
#######################


##################################
# ## LOCATION $PATH VARIABLES ## #
##################################
## Config 
export XDG_CONFIG_HOME=$HOME/.config

## Linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

## Starship
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

#########################
# ## STARSHIP PROMPT ## #
#########################
eval "$(starship init zsh)"
