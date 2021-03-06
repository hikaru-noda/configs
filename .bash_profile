if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

export HISTCONTROL="ignoredups:ignorespace"
export HISTIGNORE="pwd:free:top:htop:df:ps:uname:[bf]g:.:..:exit"
export EDITOR="vim"

[[ -f /usr/bin/grc ]] && {
  alias diff="grc --colour=auto diff"
  alias dig="grc --colour=auto dig"
  alias ifconfig="grc --colour=auto ifconfig"
  alias make="grc --colour=auto make"
  alias mount="grc --colour=auto mount"
  alias mtr="grc --colour=auto mtr"
  alias netstat="grc --colour=auto netstat"
  alias nmap="grc --colour=auto nmap"
  alias ping="grc --colour=auto ping"
  alias ps="grc --colour=auto ps"
  alias tail="grc --colour=auto tail"
  alias traceroute="grc --colour=auto traceroute"
}

alias john="/usr/sbin/john"
alias ssh_no_check="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
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
