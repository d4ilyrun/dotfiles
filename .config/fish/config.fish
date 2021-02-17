### SETTINGS ##

setxkbmap fr

set -x PATH "$HOME/bin:$PATH"
set -x EDITOR nvim
set -x VISUAL nvim
set -x TERM alacritty

### SCRIPTS ###

alias wlink="sh /usr/local/bin/wifi-connect.sh"

### ALIASES ###

# see disk space left
alias dspace="df -H | grep -e Filesystem -e sdb"

# vim redirection
alias vim="nvim"
alias vi="nvim"

# tree and ls
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"

# navigation
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# pacman and yay
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias yay='yay --noconfirm'
alias yaysua='yay -Sua --noconfirm'              # update only AUR pkgs
alias yaysyu='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -iv"
alias mv='mv -iv'
alias rm='rm -iv'

# create parent directories if needed
alias mkdir='mkdir -pv'

# git
alias g="git"
alias gs="git status"
alias gc="git commit"
alias gd="git diff"
alias gtree="tree -a -I '.git'"

### STARFISH ###
#starfish init fish | source
