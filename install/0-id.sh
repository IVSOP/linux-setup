# Enter username and email, create user, home dir, ssh key

pacman -S --noconfirm --needed gum openssh

echo -e "\nEnter your info"
export REAL_NAME=$(gum input --placeholder "Enter real name" --prompt "Real name> ")
echo "real name: $REAL_NAME"
export USER_NAME=$(gum input --placeholder "Enter user name" --prompt "User name> ")
echo "user name: $USER_NAME"
export USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")
echo "email: $USER_EMAIL"

if ! id -u $USER_NAME >/dev/null 2>&1; then
    useradd -g mygroup $USER_NAME
fi
passwd $USER_NAME
if ! getent group wheel >/dev/null; then
    groupadd wheel
fi
usermod -aG wheel $USER_NAME

sudo -u $USER_NAME ssh-keygen -t ed25519 -C "$USER_EMAIL"
