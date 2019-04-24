#!/bin/sh

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update

brew install \
# GNU binutils
binutils \
# Swift dependency management
carthage \
# Curl
curl \
# Erlang programming language
erlang \
# Nice looking replacement for ls
exa \
# Fuzzy finder
fzf \
# Git
git \
# GPG
gnupg2 \
# Go programming language
go \
# nicer looking top
htop \
# openssl replacement
libressl \
# GNU make
make \
# Easy certificate and key handling
mkcert \
# Vim replacement
neovim \
# Netcat
netcat \
# Nmap
nmap \
# OpenBSD ssh
openssh \
# OpenSSL
openssl \
# PERL
perl \
# Pogressbar for the console
pv \
# Python
python \
# Faster grep replacement
ripgrep \
# Ruby
ruby \
# SQLite
sqlite \
# Telnet
telnet \
# Terminal Mux
tmux \
# Unrar for the console
unrar \
# GNU wget
wget \
# Z shell
zsh

brew cask install \
	# Mac terminal replacement
	alacritty \
	# Spotlight replacement
	alfred \
	# Remove unsued app in it's entirety
	appcleaner \
	# Snippets
	atext \
	# Wireshark for Mac
	cocoapacketanalyzer \
	# The best browser on the market
	firefox \
	# The best flash player on the market
	google-chrome \
	# Markdown editor with live preview
	macdown \
	# Postgres GUI Client
	postico \
	# Music
	spotify \
	# GUI editor
	textmate \
	# Unpacking app
	the-unarchiver \
	# Bittorrent client
	transmission \
	# VMs
	virtualbox \
	# Media player
	vlc

cd ~/Documents
git clone https://github.com/moogle19/dotfiles.git
cd dotfiles
git submodule init && git submodule update
go get -u github.com/nsf/gocode
sh install_mononoki.sh

# Neovim setup
mkdir -p $HOME/.config/nvim
ln -s ${PWD}/init.vim $HOME/.config/nvim/init.vim

# ZSH setup

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -s ${PWD}/.zshrc $HOME/.zshrc
