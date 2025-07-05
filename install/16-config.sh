# random configurations

mkdir -p /etc/systemd/journald.conf.d
tee /etc/systemd/journald.conf.d/limit-size.conf > /dev/null <<EOF
[Journal]
SystemMaxUse=100M
EOF

mkdir -p /etc/systemd/logind.conf.d
tee /etc/systemd/logind.conf.d/power-lid.conf > /dev/null <<EOF
[Login]
HandlePowerKey=suspend
HandleLidSwitch=ignore
EOF

# nearly disable swap. is this bad??
sysctl -w vm.swappiness=1
