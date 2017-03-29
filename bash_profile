powerline-daemon -q

POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1

unamestr=`uname`

case $unamestr in
	Darwin) 
		. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh 
		;;
esac

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\] \\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

export VISUAL=vim

alias screen="/usr/local/bin/screen"




#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/dave/.sdkman"
[[ -s "/Users/dave/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/dave/.sdkman/bin/sdkman-init.sh"
