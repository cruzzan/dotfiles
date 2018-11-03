#!/bin/bash

SCRIPT_PATH=$(readlink -f $0)
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
DOTFILES_ROOT=$(dirname "$SCRIPT_DIR")
HOME_DIR=~/
USERNAME=$(whoami)

function backUpOld {
	echo "Backing up old config for $USERNAME..."

	if [ -f $HOME_DIR/.bashrc ]
	then
		echo "Backing up old bashrc"
		mv $HOME_DIR/.bashrc $HOME_DIR/.bashrc.bak
	fi

	if [ -f $HOME_DIR/.bash_profile ]
	then
		echo "Backing up old bash_profile"
		mv $HOME_DIR/.bash_profile $HOME_DIR/.bash_profile.bak
	fi

	if [ -f $HOME_DIR/.inputrc ]
	then
		echo "Backing up old inputrc"
		mv $HOME_DIR/.inputrc $HOME_DIR/.inputrc.bak
	fi

}

function installProfile {
	echo "Installing new bashrc and bash_config for $USERNAME..."
	sed -e 's|___DOTFILES_ROOT___|'"$DOTFILES_ROOT"'|g' "$SCRIPT_DIR"/bashrc_template > "$HOME_DIR"/.bashrc
	cp "$SCRIPT_DIR"/bash_profile "$HOME_DIR"/.bash_profile
	cp "$SCRIPT_DIR"/inputrc "$HOME_DIR"/.inputrc
}

function outputHelp {
	echo "Oh so you need some help huh..."
	exit 0 
}

function main {
	
	while test $# -gt 0
	do
		case "$1"
		in
		--no-bak)
			NO_BAK=1
			shift
			;;
		-h|--help)
			outputHelp
			shift
			;;
		*)
			break
			;;
		esac
	done

	[ -z $NO_BAK ] && backUpOld
	installProfile
}

main $@
