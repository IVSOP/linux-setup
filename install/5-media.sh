sudo -u $USER_NAME yay -S --noconfirm --needed \
    mpv nemo nemo-fileroller ffmpegthumbnailer \
    pipewire pipewire-pulse pipewire-alsa pipewire-jack \
    pavucontrol bluez bluez-utils blueman mediainfo bluetoothctl

# nemo settings
sudo -u $USER_NAME gsettings set org.nemo.preferences executable-text-activation 'display'
sudo -u $USER_NAME gsettings set org.nemo.preferences last-server-connect-method 4
sudo -u $USER_NAME gsettings set org.nemo.preferences never-queue-file-ops false
sudo -u $USER_NAME gsettings set org.nemo.preferences show-hidden-files true
sudo -u $USER_NAME gsettings set org.nemo.preferences thumbnail-limit 104857600

sudo -u $USER_NAME gsettings set org.nemo.search search-reverse-sort false
sudo -u $USER_NAME gsettings set org.nemo.search search-sort-column 'name'

sudo -u $USER_NAME gsettings set org.nemo.window-state geometry '1269x461+1282+946'
sudo -u $USER_NAME gsettings set org.nemo.window-state maximized false
sudo -u $USER_NAME gsettings set org.nemo.window-state sidebar-bookmark-breakpoint 6
sudo -u $USER_NAME gsettings set org.nemo.window-state start-with-sidebar true

sudo -u $USER_NAME gsettings set org.blueman.general notification-daemon false

