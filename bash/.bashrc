#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --ignore=lost+found'

# Config files
alias vconf="nvim ~/.config/nvim/init.vim"
alias tconf="nvim ~/.tmux.conf"
alias bconf="nvim ~/.bashrc"

# Too lazy to write
alias v="nvim"
alias pac="sudo pacman"
alias dla="youtube-dl -x --audio-format mp3 --audio-quality 0 --add-metadata"
alias gic="git clone"

export PS1=" \[\033[1;36m\]\w >\[\033[1;34m\]>\[\033[0m\] "
export DATA="/run/media/karudo/data"
export PATH="$HOME/.local/bin/:$HOME/go/bin/:$PATH"


colorscript random
