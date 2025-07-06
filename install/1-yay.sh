pacman -S --needed --noconfirm base-devel git

cd /home/$USER_NAME

if ! command -v yay &>/dev/null; then
    git clone https://aur.archlinux.org/yay-bin.git
    cd yay-bin
    makepkg -si --noconfirm
    cd /home/$USER_NAME
    rm -rf yay-bin
fi
