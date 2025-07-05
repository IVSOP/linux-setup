for EXTENSION in $(tail -n +3 dotfiles/Code/User/extensions.txt)
do
    sudo -u $USER_NAME code --install-extension $EXTENSION
    sleep 5
done
