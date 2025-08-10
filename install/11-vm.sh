sudo -u $USER_NAME yay -S --noconfirm --needed \
    qemu-full qemu-img libvirt virt-install \
    virt-manager virt-viewer edk2-ovmf swtpm \
    guestfs-tools libosinfo

usermod -a $USER_NAME -G libvirt
systemctl enable libvirtd.service
systemctl start libvirtd.service
virsh net-autostart default

echo ">> IMPORTANT NOTES FOR VM INSTALLATION"
echo '>> If you need iommu, add intel_iommu=on/amd_iommu=on to /etc/default/grub. example: GRUB_CMDLINE_LINUX_DEFAULT="quiet splash amd_iommu=on". Then run sudo grub-mkconfig -o /boot/grub/grub.cfg.'
echo '>> Also, you might neet to configure libvirt to use iptables. Check the arch wiki'
