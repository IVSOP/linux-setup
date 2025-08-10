sudo -u $USER_NAME yay -S --noconfirm --needed \
    gnu-free-fonts noto-fonts noto-fonts-cjk \
    noto-fonts-emoji ttf-ibm-plex ttf-droid \
    ttf-nerd-fonts-symbols

# ttf-jetbrains-mono-nerd

sudo -u $USER_NAME fc-cache -fv
