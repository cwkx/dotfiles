
export ZSH="$HOME/.oh-my-zsh"

alias pad='code --new-window --disable-extensions'
cpuwatch() { watch -n 1 "ps -C \"$1\" -o %cpu=,%mem= | awk '{printf \"CPU: %.1f%%  MEM: %.1f%%\\n\", \$1, \$2}'"; }
gpuwatch() { watch -n 1 "nvidia-smi --query-gpu=utilization.gpu,memory.used,memory.total --format=csv,noheader"; }

zstyle ':omz:update' mode disabled

ZSH_CUSTOM=$HOME/repos/dotfiles/zsh
ZSH=$HOME/.oh-my-zsh/
ZSH_THEME="agnos"

xset r rate 200 40

plugins=(git)

source $ZSH/oh-my-zsh.sh

