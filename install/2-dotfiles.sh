SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME
sudo -u $USER_NAME git clone https://github.com/IVSOP/dotfiles.git

sudo -u $USER_NAME mkdir -p .config
cp dotfiles/* -r .config
mv home_dotfiles/* .
rm -r home_dotfiles
sudo -u $USER_NAME mkdir -p .local/share/applications
cp -r dotfiles/nemo/* .local/share/applications/

sudo -u $USER_NAME update-desktop-database /home/$USER_NAME/.local/share/applications

DOTFILES_LOCATION="/home/$USER_NAME/dotfiles"

cd $SETUP_LOCATION
