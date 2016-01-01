#!/bin/sh

sudo dnf -y  install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y update

sudo dnf -y install bash curl erlang ettercap git gnupg2 go htop hub mysql mongodb nmap-ncat nmap openssh openssl perl postgresql pv python rebar ruby sqlite tmux tree vim wget zsh

sudo dnf -y install terminator keepass thunderbird transmission

sh install_fonts.sh

git submodule init && git submodule update

export GOPATH=~/go
go get -u github.com/nsf/gocode

ln -s ${PWD}/.oh-my-zsh ~/.oh-my-zsh
ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/.zshrc ~/.zshrc
ln -s ${PWD}/.gobindings ~/.gobindings

sudo chsh -s /usr/bin/zsh $USER

