sudo -u $USER_NAME yay -S --noconfirm --needed \
    base-devel gcc cmake gdb valgrind glew git \
    nodejs npm visual-studio-code-bin lazydocker \
    python typst docker mongodb-bin mongosh-bin

systemctl disable docker
systemctl disable mongod

# will this work or do I need to source zshrc??
sudo -u $USER_NAME curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sudo -u $USER_NAME sh && \
sudo -u $USER_NAME rustup install nightly && \
sudo -u $USER_NAME rustup component add clippy && \
sudo -u $USER_NAME rustup component add rustfmt && \
sudo -u $USER_NAME rustup target add wasm32-unknown-unknown && \
sudo -u $USER_NAME rustup +nightly target add wasm32-unknown-unknown && \
sudo -u $USER_NAME rustup target add x86_64-pc-windows-gnu && \
sudo -u $USER_NAME rustup +nightly target add x86_64-pc-windows-gnu && \
sudo -u $USER_NAME rustup component add rustc-codegen-cranelift-preview --toolchain nightly && \
for CARGO_PACKAGE in $(tail -n +3 dotfiles/cargo.txt)
do
    sudo -u $USER_NAME cargo install $CARGO_PACKAGE
done
