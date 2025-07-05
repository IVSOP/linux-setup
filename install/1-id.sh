# Enter username and email, create user, home dir, ssh key

sudo -u $USER_NAME yay -S --noconfirm --needed gum openssh

echo -e "\nEnter your info"
export REAL_NAME=$(gum input --placeholder "Enter real name" --prompt "Real name> ")
export USER_NAME=$(gum input --placeholder "Enter user name" --prompt "User name> ")
export USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")

useradd -m -s /bin/bash $USER_NAME
passwd $USER_NAME
groupadd wheel
usermod -aG wheel $USER_NAME

sudo -u $USER_NAME ssh-keygen -t ed25519 -C "$USER_EMAIL"; break;;
