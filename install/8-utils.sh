# random utils not specific to anything

sudo -u $USER_NAME yay -S --noconfirm --needed \
    bat tar zstd pv man-pages man-db tldr \
    gnupg wget curl jq openssh sshfs btop \
    htop ripgrep gvfs gvfs-dnssd fend fzf \
    fd zip unzip gdu amdgpu_top imagemagick \
    cloudflare-warp-bin zulucrypt tree exa \
    desktop-file-utils borg openbsd-netcat \
    chafa yazi somo impala duf wdisplays

systemctl disable warp-svc

sudo -u $USER_NAME mkdir -p /home/$USER_NAME/Pictures/Screenshots
