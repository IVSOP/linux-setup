SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME

if [ ! -d "dotfiles" ]; then
    sudo -u $USER_NAME git clone https://github.com/IVSOP/dotfiles.git
else
    echo "dotfiles/ already exists. Skipping clone."
fi

sudo -u $USER_NAME yay -S --needed --noconfirm desktop-file-utils


# copy all into .config
sudo -u $USER_NAME mkdir -p .config
sudo -u $USER_NAME cp -r dotfiles/* .config

# some things should not be in .config
rm -rf .config/home_dotfiles
rm -rf .config/nemo
rm     .config/cargo.txt
# rm     ".config/Code - OSS/User/extensions.txt"

# instead, they are copied somewhere else
sudo -u $USER_NAME cp -r dotfiles/home_dotfiles/.* .
sudo -u $USER_NAME mkdir -p .local/share/applications
sudo -u $USER_NAME cp -r dotfiles/nemo/* .local/share/applications/

sudo -u $USER_NAME update-desktop-database /home/$USER_NAME/.local/share/applications

export DOTFILES_LOCATION="/home/$USER_NAME/dotfiles"

cd $SETUP_LOCATION
