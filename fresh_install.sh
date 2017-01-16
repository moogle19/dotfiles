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
mksh \
netcat \
nmap \
openssh \
openssl \
perl \
pstree \
pv \
python \
ruby \
sqlite \
tmux \
tree \
unrar \
vim \
wget

brew cask install \
	alfred \
	appcleaner \
	atext \
	cocoapacketanalyzer \
	dash \
	disk-inventory-x \
	firefox \
	google-chrome \
	itsycal \
	keepassx \
	macdown \
	slack \
	spotify \
	teamviewer \
	textmate \
	the-unarchiver \
	thunderbird \
	transmission \
	virtualbox \
	vlc

cd ~/Documents
git clone https://github.com/moogle19/dotfiles.git
cd dotfiles
git submodule init && git submodule update
go get -u github.com/nsf/gocode
sh install_mononoki.sh


ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/.mkshrc ~/.mkshrc
ln -s ${PWD}/.gobindings ~/.gobindings
