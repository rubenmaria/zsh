#!/bin/sh
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

#Jump TO
alias goto='cd $({find ~/workspace -type d -print & find ~/uni -type d -print & \
  find ~/.config -type d -print & find ~/personal/ -type d -print} | fzf)'

# Remarkable
alias remarkable_ssh='ssh root@10.11.99.1'
alias restream='restream -p'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

if [[ $TERM == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
fi

alias ls='ls --color=auto'
alias la='ls -a'
alias mvld='f() { mv "/home/rubs/Downloads/$(ls -t ~/Downloads | head -n 1)" $1 };f'
alias gitlog='git log --all --decorate --oneline --graph'
