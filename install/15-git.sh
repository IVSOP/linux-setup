SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME

sudo -u $USER_NAME git config --global user.name "$REAL_NAME"
sudo -u $USER_NAME git config --global user.email "$USER_EMAIL"

cd $SETUP_LOCATION
