# I think ufw will manage iptables so I can disable it
systemctl disable iptables.service
systemctl stop iptables.service
sudo -u $USER_NAME yay --noconfirm --needed -S ufw
ufw enable
systemctl enable ufw
systemctl start ufw
