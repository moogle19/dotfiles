# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

_has() {
  return $( whence $1 >/dev/null )
}

# Theme
ZSH_THEME="mgutz"

# Disable auto-correction
ENABLE_CORRECTION="false"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


## oh-my-zsh plugins
plugins=(
	brew
	cargo
	docker
	docker-compose
	git
	github
	golang
	nmap
	osx
	postgres
	rsync
	rust
	sudo
	taskwarrior
	tmux
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

## Go setup
export GOPATH=$HOME/go
export GO111MODULE=on

## PATH setup

# Go binaries
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:/usr/local/go/bin

# sbin
export PATH=/usr/local/sbin:$PATH

# Rust binaries
export PATH=$PATH:$HOME/.cargo/bin

# GNU binutils
export PATH="/usr/local/opt/binutils/bin:$PATH"

# Flutter
export PATH=$PATH:/Users/kevin/development/flutter/bin

## Private (not in git) configuration
source ~/.private_sh

## FZF
source /usr/local/opt/fzf/shell/key-bindings.zsh
source /usr/local/opt/fzf/shell/completion.zsh

if _has fzf && _has ag; then
  export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
fi

## Locale setup
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


## Alias setup
alias ls="exa"
alias vim="nvim"
alias vi="nvim"
alias tree="exa -T"

