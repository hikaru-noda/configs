export HISTCONTROL="ignoredups:ignorespace"
export HISTIGNORE="pwd:free:top:htop:df:ps:uname:[bf]g:.:..:exit"
export EDITOR="vim"

[[ -f /usr/bin/grc ]] && {
  alias diff="grc --colour=auto diff"
  alias make="grc --colour=auto make"
  alias netstat="grc --colour=auto netstat"
  alias ping="grc --colour=auto ping"
  alias tail="grc --colour=auto tail"
  alias traceroute="grc --colour=auto traceroute"
}

alias df="df -h"
alias free="free -m"
alias ll="ls -lh"
alias la="ls -a"
alias ..="cd .."
alias .="ls"
c(){ cd "$*" && ls ; }
m(){ mkdir "$1" && cd "$1"; }
ff() { find . -type f -iname '*'$*'*' -ls ; }

# complete comands after "sudo" by Tab
complete -cf sudo
# complete hostnames by Tab (this uses /etc/hosts as source)
complete -A hostname nc nmap ping ssh telnet

HOST_BASHCONFIG="$HOME/.config/bash/$(hostname -f)"
if [ -f $HOST_BASHCONFIG ]; then
  source $HOST_BASHCONFIG
fi
