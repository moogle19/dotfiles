#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew install android-sdk bash brew-cask carthage curl ettercap go grep mariadb openssh node nmap openssl python tmux vim wget
brew cask install adium alfred android-studio appcleaner atext beamer brackets cocoapacketanalyzer dropbox firefox iterm2 libreoffice limechat macdown sequel-pro slack smoothmouse spotify teamviewer textmate thunderbird transmission virtualbox vlc
cd ~/Documents
git clone https://github.com/moogle19/dotfiles.git
cd dotfiles
git submodule init && git submodule update


ln -s ${PWD}/.oh-my-zsh ~/.oh-my-zsh
ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/.zshrc ~/.zshrc
