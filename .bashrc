#IBUS (previously SCIM) related exports
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export GTK_IM_MODULE_FILE=/etc/gtk-3.0/gtk.immodules

alias ls="ls --color=tty"
alias vi="vim"
alias gco="git co"
alias gci="git ci"
alias gst="git st"
alias gbr="git br"
alias ghi="git hi"
alias gty="git ty"
alias gdu="git du"
alias gol="git on"
alias gla="git la"
alias glo="git lo"
alias ggr="git gr"

alias httpserver="python -m SimpleHTTPServer"

alias ibusd="ibus-daemon --xim -d"

if [ -f ~/git/git-completion.sh ]; then
	source ~/git/git-completion.sh
elif [ /etc/bash_completion ]; then
	source /etc/bash_completion
fi

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
