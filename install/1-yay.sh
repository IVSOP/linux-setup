pacman -S --needed --noconfirm base-devel git

SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME

if ! command -v yay &>/dev/null; then
    sudo -u $USER_NAME git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    sudo -u $USER_NAME makepkg -si --noconfirm
    cd /home/$USER_NAME
    rm -rf yay-bin
fi

cd $SETUP_LOCATION
