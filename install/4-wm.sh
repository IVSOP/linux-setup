# wms and utilities used exclusively inside wms
# apps not considered utilities

sudo -u $USER_NAME yay -S --noconfirm --needed \
    i3-wm perl-anyevent-i3 ly xorg-server xorg-xauth \
    xorg-xrandr xorg-xinput i3lock rofi picom dunst nitrogen \
     brightnessctl polybar xss-lock scrot gtk4 gtk3 gtk2 \
    network-manager-applet sway xdg-desktop-portal \
    xdg-desktop-portal-wlr qt6-wayland qt5-wayland wayland-utils \
    xorg-xwayland xdg-desktop-portal-gtk swaybg waybar grim \
    swaylock swayidle wlprop wl-clipboard hyprpicker slurp satty

systemctl enable ly.service
