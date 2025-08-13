sudo -u $USER_NAME yay -S --noconfirm --needed \
    base-devel gcc cmake gdb valgrind glew git \
    nodejs npm code lazydocker \
    python typst docker mongodb-bin mongosh-bin \
    docker-compose neovim

systemctl disable docker
systemctl disable mongodb

sudo -u $USER_NAME curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sudo -u $USER_NAME sh

cp $DOTFILES_LOCATION/home_dotfiles/.zsh* .

# rust has weird instalation, need to update the env

SETUP_LOCATION=$(pwd)

cd /home/$USER_NAME

sudo -u $USER_NAME zsh -l -c 'rustup install nightly'
sudo -u $USER_NAME zsh -l -c 'rustup component add clippy'
sudo -u $USER_NAME zsh -l -c 'rustup component add rustfmt'
sudo -u $USER_NAME zsh -l -c 'rustup target add wasm32-unknown-unknown'
sudo -u $USER_NAME zsh -l -c 'rustup +nightly target add wasm32-unknown-unknown'
sudo -u $USER_NAME zsh -l -c 'rustup target add x86_64-pc-windows-gnu'
sudo -u $USER_NAME zsh -l -c 'rustup +nightly target add x86_64-pc-windows-gnu'
sudo -u $USER_NAME zsh -l -c 'rustup component add rustc-codegen-cranelift-preview --toolchain nightly'
for CARGO_PACKAGE in $(tail -n +3 $DOTFILES_LOCATION/cargo.txt)
do
    sudo -u $USER_NAME zsh -l -c "cargo install $CARGO_PACKAGE"
done

cd $SETUP_LOCATION
