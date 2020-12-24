### SETTINGS ##

setxkbmap fr

### ALIASES ###

# vim
alias vim="nvim"

# tree and ls
alias treea="tree -a -I '.git'"
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

alias mkdir='mkdir -pv'

### STARFISH ###
#starfish init fish | source
