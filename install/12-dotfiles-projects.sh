CURR_PATH=$(pwd)

cd /home/$USER_NAME
sudo -u $USER_NAME mkdir -p Desktop
cd Desktop

git clone sudo -u $USER_NAME https://github.com/IVSOP/Rofi-Themer.git
sudo -u $USER_NAME ./build.sh /home/$USER_NAME/Desktop/Rofi-Themer/build/Themer-socket
cd ..

Desktop/mariana/
cd ..

cd $CURR_PATH
