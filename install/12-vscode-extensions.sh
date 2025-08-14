SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME

for EXTENSION in $(tail -n +3 "$DOTFILES_LOCATION/Code - OSS/User/extensions.txt")
do
    sudo -u $USER_NAME code --install-extension $EXTENSION
    sleep 5
done

cd $SETUP_LOCATION
