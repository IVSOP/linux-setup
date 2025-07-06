# terminal and shell

# this is last because installing oh my zsh changes the shell

sudo -u $USER_NAME yay -S --noconfirm --needed \
    alacritty

echo "Setting default terminal in gsettings"
gsettings set org.cinnamon.desktop.default-applications.terminal exec alacritty

# I think oh my zsh install already does this
# chsh -s /usr/bin/zsh $USER_NAME

SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME

sudo -u $USER_NAME sh -c "$(sudo -u $USER_NAME curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# cp dotfiles/home_dotfiles/.zsh* .



# THIS WILL NOT RUN


# sudo -u $USER_NAME git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

# sudo -u $USER_NAMEcp $DOTFILES_LOCATION/home_dotfiles/.zsh* .

# cd $SETUP_LOCATION
