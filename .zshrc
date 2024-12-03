
export ZSH="$HOME/.oh-my-zsh"

alias pad='code --new-window --disable-extensions' 
zstyle ':omz:update' mode disabled

ZSH_CUSTOM=$HOME/repos/dotfiles/zsh
ZSH=$HOME/.oh-my-zsh/
ZSH_THEME="agnos"

xset r rate 200 40

plugins=(git)

source $ZSH/oh-my-zsh.sh

