#!/bin/sh

# Jump TO
alias goto='cd $({find ~/workspace -type d -print & find ~/uni -type d -print & \
  find ~/.config -type d -print & find ~/personal/ -type d -print} | fzf)'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

# Useful
alias c='clear'
alias ls='ls --color=auto'
alias la='ls -a'
alias mvld='f() { mv "/home/rubs/Downloads/$(ls -t ~/Downloads | head -n 1)" $1 };f'
alias gitlog='git log --all --decorate --oneline --graph'
alias storage='sudo du -hsx * | sort -rh | head -n 40'
alias rm-pacman-cache='paccache -rk1'
