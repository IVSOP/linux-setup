#!/usr/bin/bash

if [ $EUID -ne 0 ]
then
	echo "Please run as root"
	exit 1
fi

echo -e "\nEnter your info"
export USER_NAME=$(gum input --placeholder "Enter user name" --prompt "User name> ")
echo "user name: $USER_NAME"

SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME

sudo -u $USER_NAME git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

sudo -u $USER_NAMEcp $DOTFILES_LOCATION/home_dotfiles/.zsh* .

cd $SETUP_LOCATION
