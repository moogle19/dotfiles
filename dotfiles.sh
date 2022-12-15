#!/usr/bin/env bash

DOTFILES_DIR=$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
FILES=(.zshrc .zsh_profile .config/nvim .tmux.conf)


function healthcheck {
    for FILE in ${FILES[@]}; do
        printf "Checking $FILE..."
        TARGET=$(readlink -f $HOME/$FILE)
    
        if [ $TARGET == "$DOTFILES_DIR/$FILE" ]; then
            echo -e "\033[0;32mPASS\033[0m"
        else
            echo -e "\033[0;31mFAIL\033[0m"
        fi
    done
}

function install {
    for FILE in ${FILES[@]}; do
        printf "Linking $FILE..."
        TARGET=$HOME/$FILE
        ln -s $DOTFILES_DIR/$FILE $TARGET
        echo "done"
    done
}

function rm_if_link(){ [ ! -L "$1" ] || rm -v "$1"; }

function uninstall {
    for FILE in ${FILES[@]}; do
        printf "Unlinking $FILE..."
        TARGET=$HOME/$FILE
        rm_if_link $TARGET > /dev/null
        echo "done"
    done
}

function print_help {
    echo "Usage: $0 <command>"
    echo ""
    echo "Commands:"
    echo "install"
    echo -e "\tInstalls all dotfiles by linking them to their correct path"
    echo ""
    echo "uninstall"
    echo -e "\tRemove all linked dotfiles"
    echo ""
    echo "health"
    echo -e "\tChecks if all symlinks are correctly set"
}

case $1 in
    install)
        install
        ;;

    uninstall)
        uninstall
        ;;

    health)
        healthcheck
        ;;

    *)
        print_help
        ;;
esac
