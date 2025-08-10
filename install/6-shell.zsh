# install zsh wihout configuring anything
# it is used by dev.sh so it can read the correct env vars. TODO: change it to use bash so this is not needed

sudo -u $USER_NAME yay -S --noconfirm --needed \
    zsh
