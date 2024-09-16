export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# zsh-vi-mode <- make it work with tmux sessionizer
plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"
export PATH="$PATH:/home/p/.local/bin"
export PATH="$PATH:/usr/local"

alias cat="bat"

# tmux
bindkey -s '^f' 'tmux-sessionizer\n'
alias a='tmux attach'
alias cds="source tmux-dir-changer"

# git aliases
alias gs="git status"
alias gl="git log --oneline"
alias ga="git add ."
alias gca="git add . && git commit"
alias gc="git commit"
alias gu="git push"
alias gd="git pull"
alias gch="git checkout"
alias gsh="git stash"

alias so='source ~/.zshrc'
alias s='cd ~/.local/bin'

alias zshrc='nvim ~/.zshrc'
alias vi='nvim'
alias c='cd ~/code/'

bindkey -s "^g" "source jesus_said_go\n"

export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=5000

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GOLANG
export GO_INSTALL="/usr/local/go"
export PATH="$PATH:$GO_INSTALL/bin"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Flutter
export FLUTTER_INSTALL="/usr/local/flutter"
export DART_INSTALL="/usr/local/flutter/bin/dart"
export PATH="$FLUTTER_INSTALL/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

alias dbr="dart run build_runner build"
alias dbrw="dart run build_runner watch -d"

# JDK
export JDK_INSTALL="/usr/local/android-studio/jbr"
export PATH="$JDK_INSTALL/bin:$PATH"

# Emulator
export EMULATOR_INSTALL="/home/p/Android/Sdk/emulator"
export PATH="$EMULATOR_INSTALL:$PATH"

# Platform-tools
export PLATFORM_TOOLS_INSTALL="/home/p/Android/Sdk/platform-tools"
export PATH="$PLATFORM_TOOLS_INSTALL:$PATH"

eval $(thefuck --alias)

# bash completion
source <(cat /home/p/.local/share/bash-completion/*)

export FLYCTL_INSTALL="/home/p/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

for f in $(find  "$HOME/.config/jebudu/source" -type l -o -type f 2> /dev/null); do
	source "$f"
done

export PATH="$HOME/.config/jebudu/scripts:$PATH"

# Turso
export PATH="$PATH:/home/p/.turso"

##!/bin/bash

# Tórbo Bimaz 3000
alias bim=bim.sh


# Load Angular CLI autocompletion.
source <(ng completion script)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(zoxide init zsh --cmd cd)"
eval "$(jebudu init zsh)"
