# TODO: put all this text in gum

echo "================================"

echo "Manual intervention is required since automating this would be a pain."

echo "Polybar: the temperature(/cpu) modules will need you to specify the sensor file where to read the temperature"
echo "Waybar: the temperature modules will need you to specify the sensor file where to read the temperature, and the cpu modules need the number of icons to match the number of cores"
echo "Background: the background images are personal and not shared in my dotfiles. Change Desktop/Rofi-Themer/data to set the background paths"

echo "something in media.sh is broken since there is still no WM when installing - might need to run it manually 'USER_NAME=\$(logname) ./install/4-media.sh', after loggin in with a GUI"

echo "rust gets installed AGAIN through pacman for some reason, uninstall it"

echo "install ufw-docker if using iptables"

echo "================================"

gum input --placeholder "Press Enter to continue after you have read this"
