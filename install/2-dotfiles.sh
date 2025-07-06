SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME

if [ ! -d "dotfiles" ]; then
    sudo -u $USER_NAME git clone https://github.com/IVSOP/dotfiles.git
else
    echo "dotfiles/ already exists. Skipping clone."
fi


# copy all into .config
sudo -u $USER_NAME mkdir -p .config
cp dotfiles/* -r .config

# home_dotfiles and nemo should not be in .config
rm -rf .config/home_dotfiles
rm -rf .config/nemo

# instead, they are copied somewhere else
cp dotfiles/home_dotfiles/* .
sudo -u $USER_NAME mkdir -p .local/share/applications
cp -r dotfiles/nemo/* .local/share/applications/

sudo -u $USER_NAME update-desktop-database /home/$USER_NAME/.local/share/applications

export DOTFILES_LOCATION="/home/$USER_NAME/dotfiles"

cd $SETUP_LOCATION
