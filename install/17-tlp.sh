if gum confirm "Install tlp (battery management for laptops)?"; then
    mkdir -p /etc/tlp.d
    sudo -u $USER_NAME yay -S --noconfirm --needed tlp
    cp $DOTFILES_LOCATION/tlp/configs/tlp.conf /etc
    cp $DOTFILES_LOCATION/tlp/configs/01-powersave-BAT.conf /etc/tlp.d
    cp $DOTFILES_LOCATION/tlp/configs/04-balanced-AC.conf /etc/tlp.d
    systemctl enable tlp
    tlp true
    tlp start
else
    echo "Not installing tlp"
fi
