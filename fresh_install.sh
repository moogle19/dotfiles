#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew install \
bash \
caskroom/cask/brew-cask \
carthage \
curl \
erlang \
ettercap \
git \
gnupg2 \
go \
homebrew/dupes/grep \
htop-osx \
hub \
libressl \
mysql \
mongodb \
netcat \
nmap \
node \
openssh \
openssl \
perl \
postgresql \
pstree \
pv \
python \
rebar \
ruby \
sqlite \
tmux \
tree \
unrar \
vim \
wget \
zsh

brew cask install \
	alfred \
	appcleaner \
	atext \
	beamer \
	cocoapacketanalyzer \
	controlplane \
	dash \
	disk-inventory-x \
	firefox \
	google-chrome \
	iterm2 \
	itsycal \
	keepassx \
	keepingyouawake \
	macdown \
	psequel \
	sequel-pro \
	slack \
	smoothmouse \
	spotify \
	teamviewer \
	textmate \
	the-unarchiver \
	thunderbird \
	transmission \
	tunnelblick \
	virtualbox \
	vlc

cd ~/Documents
git clone https://github.com/moogle19/dotfiles.git
cd dotfiles
git submodule init && git submodule update
go get -u github.com/nsf/gocode
sh install_mononoki.sh


ln -s ${PWD}/.oh-my-zsh ~/.oh-my-zsh
ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/.zshrc ~/.zshrc
ln -s ${PWD}/.gobindings ~/.gobindings
