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

sudo -u "$USER_NAME" bash -c '
    FZF_TAB_LOCATION="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fzf-tab"
    if [ ! -d "$FZF_TAB_LOCATION" ]; then
        sudo -u $USER_NAME git clone https://github.com/Aloxaf/fzf-tab "$FZF_TAB_LOCATION"
    else
        echo "fzf-tab/ already exists. Skipping clone."
    fi


'

sudo -u $USER_NAME cp $DOTFILES_LOCATION/home_dotfiles/.zsh* .

cd $SETUP_LOCATION
