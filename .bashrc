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

source ~/git/git-completion.sh

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
