SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME

for EXTENSION in $(tail -n +3 "$DOTFILES_LOCATION/Code - OSS/User/extensions.txt")
do
    sudo -u $USER_NAME code --install-extension $EXTENSION
    sleep 5
done

# in case I forget to put my extension on open VSX
sudo -u $USER_NAME code --install-extension Desktop/iana/iana-0.0.1.vsix

cd $SETUP_LOCATION
