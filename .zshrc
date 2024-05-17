#!/bin/sh
source ~/.zplug/init.zsh
#[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

#autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# history
HISTFILE=~/.zsh_history

# source
source "aliases.zsh"
source "virtualenvwrapper.sh"

# plugins
zplug "esc/conda-zsh-completion"
zplug "zsh-users/zsh-autosuggestions"
zplug "hlissner/zsh-autopair"
zplug "zap-zsh/supercharge"
zplug "zap-zsh/vim"
zplug "zap-zsh/zap-prompt"
zplug "zap-zsh/fzf"
zplug "zap-zsh/exa", as:command
zplug "zdharma/fast-syntax-highlighting", from:github, defer:2

# Load theme file
zplug 'dracula/zsh', as:theme
DRACULA_DISPLAY_TIME=1
DRACULA_DISPLAY_CONTEXT=1
DRACULA_DISPLAY_FULL_CWD=1
DRACULA_DISPLAY_NEW_LINE=1

#options
setopt extendedglob

# keybinds
bindkey '^ ' autosuggest-accept

path+=("$HOME/.local/bin")
path+=("$HOME/.config/kitty/term-white-mode.sh")
path+=("$HOME/.config/kitty/change-theme.sh")
export PATH
[ -f "/home/rubs/.ghcup/env" ] && source "/home/rubs/.ghcup/env" # ghcup-env

zplug load
