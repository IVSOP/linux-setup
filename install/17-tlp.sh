if gum confirm "Install tlp (battery management for laptops)?"; then
    mkdir -p /etc/tlp.d
    cp dotfiles/tlp/tlp.conf /etc
    cp dotfiles/tlp/01-powersave-BAT.conf /etc/tlp.d
    cp dotfiles/tlp/04-balanced-AC.conf /etc/tlp.d
    tlp enable
    tlp start
else
    echo "Not installing tlp"
fi
