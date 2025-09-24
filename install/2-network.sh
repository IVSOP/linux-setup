sudo -u $USER_NAME yay -S --noconfirm --needed nftables iptables-nft ufw somo nmtui nmcli ufw-docker

systemctl disable --now iptables.service
systemctl disable --now ip6tables.service
systemctl enable  --now nftables.service

ufw enable
systemctl enable  --now ufw
ufw-docker install

# for some reason ufw does not remove the default config, which basically restricts everything
# nft delete table inet filter
mv /etc/nftables.conf /etc/nftables-backup.conf
touch /etc/nftables.conf

systemctl restart ufw

