#unalias run-help
#autoload run-help
HELPDIR=/usr/local/share/zsh/help

if [[ -a $HOME/.local_zshrc ]]; then
  source $HOME/.local_zshrc
fi

export LOCALE=en_US.UTF-8

if [[ -a $HOME/.local/bin ]]; then
	export PATH=$PATH:$HOME/.local/bin
fi

if [[ -a $HOME/bin ]]; then
	export PATH=$PATH:$HOME/bin
fi

if [[ -a $HOME/scripts ]]; then
    export PATH=$PATH:$HOME/scripts
fi

if [ `uname` = "Darwin" ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
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
elif [[ -a $HOME/.local/lib/python3.4/site-packages/powerline ]]; then
  export POWERLINE_LOC="$HOME/.local/lib/python3.4/site-packages/powerline"
fi

. $POWERLINE_LOC/bindings/zsh/powerline.zsh

alias t=todo.sh


bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

alias t=todo.sh
alias th="todo.sh -d ~/Dropbox/todo/dropbox_todo.cfg"

# changes hex 0x15 to delete everything to the left of the cursor,
# rather than the whole line
bindkey "^U" backward-kill-line
#
# binds hex 0x18 0x7f with deleting everything to the left of the cursor
bindkey "^Xx7f" backward-kill-line

# adds redo
bindkey "^X^_" redo


alias ll="ls -l"

# Always grep with color
alias grep="grep --color=auto"
export GREP_COLOR='1;35;40'

## History
HISTFILE=$HOME/.zhistory       # enable history saving on shell exit
setopt APPEND_HISTORY          # append rather than overwrite history file.
HISTSIZE=1200                  # lines of history to maintain memory
SAVEHIST=1000                  # lines of history to maintain in history file.
setopt HIST_EXPIRE_DUPS_FIRST  # allow dups, but expire old ones when I hit HISTSIZE
setopt EXTENDED_HISTORY        # save timestamp and runtime information


PATH="/Users/dave/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/dave/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/dave/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/dave/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/dave/perl5"; export PERL_MM_OPT;
