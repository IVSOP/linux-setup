systemctl disable --now iptables.service
systemctl disable --now ip6tables.service

yay -S somo

if gum confirm "Use nftables instead of iptables? This might break docker"
then
    sudo -u $USER_NAME yay -Rns ufw
    echo "CHOOSE YES IF ASKED TO DELETE IPTABLES"
    sudo -u $USER_NAME yay -S --needed nftables iptables-nft
    systemctl enable  --now nftables.service
    ufw enable
    systemctl enable  --now ufw
    # for some reason ufw does not remove the default config, which basically restricts everything
    # nft delete table inet filter
    mv /etc/nftables.conf /etc/nftables-backup.conf
    touch /etc/nftables.conf
    systemctl restart ufw
else
    sudo -u $USER_NAME yay -S --needed --no-confirm ufw
    ufw enable
    systemctl enable  --now ufw
fi


