# random utils not specific to anything

sudo -u $USER_NAME yay -S --noconfirm --needed \
    bat tar zstd pv man-pages man-db tldr \
    gnupg wget curl jq openssh sshfs btop \
    htop ripgrep gvfs gvfs-dnssd fend fzf \
    fd zip unzip gdu amdgpu_top imagemagick \
    cloudflare-warp-bin zulucrypt tree

systemctl disable warp-svc
