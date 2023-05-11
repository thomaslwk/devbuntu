########################
## devbuntu - Config ## 
########################


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
alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias la='ls --color=auto -al'
alias grep='grep --color=auto'
alias grepw='grep --color=auto -Hrnwi'
alias mkdir='mkdir -pv'
alias mv='mv -v'
alias wget='wget -c'
alias tree="tree -aI 'test*|.git|node_modules|resources'"
alias exa='exa -lFh --git'

############
## EDITOR ## 
############
export EDITOR=/usr/bin/vim

###################
## ENABLE COLOUR ##
###################
export TERM=xterm-color
### add git branch to terminal 
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[38;5;39m\]\u\[\e[38;5;81m\]@\[\e[38;5;77m\]\h \[\e[38;5;226m\]\w\[\e[38;5;165m\]\$(parse_git_branch)\[\e[0m\] $ "

####################
## POKEMON COLORS ##
####################
pokemon-colorscripts -r
