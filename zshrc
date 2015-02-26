unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help


powerline-daemon -q


. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

alias t=todo.sh


bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

