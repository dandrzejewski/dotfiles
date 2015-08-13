#unalias run-help
#autoload run-help
HELPDIR=/usr/local/share/zsh/help

if [[ -a $HOME/.local/bin ]]; then
	export PATH=$PATH:$HOME/.local/bin
fi

if [[ -a $HOME/bin ]]; then
	export PATH=$PATH:$HOME/bin
fi


powerline-daemon -q

if [[ -a $HOME/.local/lib/python2.7/site-packages/powerline ]]; then
	export POWERLINE_LOC="$HOME/.local/lib/python2.7/site-packages/powerline"
elif [[ -a $HOME/Library/Python/2.7/lib/python/site-packages/powerline ]]; then
    export POWERLINE_LOC="$HOME/Library/Python/2.7/lib/python/site-packages/powerline"
elif [[ -a /usr/local/lib/python2.7/dist-packages/powerline ]]; then
	export POWERLINE_LOC="/usr/local/lib/python2.7/dist-packages/powerline"
elif [[ -a /usr/local/lib/python2.7/site-packages/powerline/ ]]; then
	export POWERLINE_LOC="/usr/local/lib/python2.7/site-packages/powerline"
elif [[ -a /usr/share/powerline ]]; then
	export POWERLINE_LOC="/usr/share/powerline"
fi

. $POWERLINE_LOC/bindings/zsh/powerline.zsh

alias t=todo.sh


bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

alias t=todo.sh


bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

alias ll="ls -l"

# Always grep with color
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

