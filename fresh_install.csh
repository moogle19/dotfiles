#!/bin/csh

env ASSUME_ALWAYS_YES=YES pkg bootstrap

env ASSUME_ALWAYS_YES pkg install \
	vim-lite \
	git

cd ~/Documents
git clone https://github.com/moogle19/dotfiles.git
cd dotfiles

ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
