SETUP_PATH=$(pwd)

cd /home/$USER_NAME
sudo -u $USER_NAME mkdir -p Desktop
cd Desktop

if [ ! -d "Rofi-Themer" ]; then
    sudo -u $USER_NAME git clone https://github.com/IVSOP/Rofi-Themer.git
else
    echo "dotfiles/ already exists. Skipping clone."
fi

cd Rofi-Themer
sudo -u $USER_NAME ./build.sh /home/$USER_NAME/Desktop/Rofi-Themer/build/Themer-socket
cd ..

if [ ! -d "mariana" ]; then
    sudo -u $USER_NAME git clone https://github.com/IVSOP/nvim-juliana-custom.git mariana
else
    echo "dotfiles/ already exists. Skipping clone."
fi

cd $SETUP_PATH
