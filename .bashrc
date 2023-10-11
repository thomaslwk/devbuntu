# ========================================================================== #
## devbuntu - Config 
# ========================================================================== #

##################
## Setup colors ## 
##################
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM='gnome-256color';
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM='xterm-256color';
fi;

#####################
## History control ##
#####################
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

###########
## ALIAS ## 
###########
alias cp='cp -Rv'
alias ls='ls --color=auto -l'
alias la='ls --color=auto -al'
alias ll='ls -alF'
alias l='ls -CF'
alias grep='grep --color=auto'
alias grepw='grep --color=auto -Hrnwi'
alias mkdir='mkdir -pv'
alias mv='mv -v'
alias wget='wget -c'
alias tree="tree -aI 'test*|.git|node_modules|resources'"
alias exa='exa -lFh --git'

# robot stuff
alias sam='ssh sam@192.168.0.150'

############
## EDITOR ## 
############
export EDITOR=/usr/bin/vim

####################
## POKEMON COLORS ##
####################
# pokemon-colorscripts -r

#################
## Bash Prompt ## 
#################
## git prompt 
source ~/.config/.git-prompt.sh

## git
parse_git_bg() {
   if [[ $(git status -s 2> /dev/null) ]]; then
     echo -e "\033[0;31m"
   else
     echo -e "\033[0;32m"
   fi
}
## prompt colours 
PS1='\[\033[0;32m\]\[\033[0m\033[0;32m\]\u\[\033[0;34m\]@\[\033[0;34m\]\h \w\[$(parse_git_bg)\]$(__git_ps1)\n\[\033[0;32m\]\$\[\033[0m\] '



