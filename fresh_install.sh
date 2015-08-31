#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew install android-sdk bash caskroom/cask/brew-cask carthage curl ettercap go homebrew/dupes/grep mariadb openssh node nmap openssl python tmux vim wget gnupg2 zsh
brew cask install adium alfred android-studio appcleaner atext atom beamer brackets cocoapacketanalyzer dropbox firefox iterm2 java libreoffice limechat macdown sequel-pro slack smoothmouse spotify teamviewer textmate thunderbird transmission virtualbox vlc controlplane
cd ~/Documents
git clone https://github.com/moogle19/dotfiles.git
cd dotfiles
git submodule init && git submodule update
go get -u github.com/nsf/gocode
sh install_hermit.sh


ln -s ${PWD}/.oh-my-zsh ~/.oh-my-zsh
ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/.zshrc ~/.zshrc
ln -s ${PWD}/.gobindings ~/.gobindings

# Disable unneeded homecalling and network advertising services
sh disable_user_launch_agents.sh
sh disable_system_launch_agents.sh

# Install alternative hosts file with blocked hosts
sudo mv /etc/hosts /etc/hosts.bak
sudo ln -s ${PWD}/hosts /etc/hosts

# Install privoxy for http/web filtering
sh install_privoxy.sh
