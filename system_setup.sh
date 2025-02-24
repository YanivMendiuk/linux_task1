#! /bin/bash

# Installing packages available in the default APT repositories

apt install git net-tools jq yq python3 codium

# Call the install non APT packages script

./install_non_apt_packages.sh

echo "install non APT packages completed!"

# Call the Vim setup script
./setup_vim.sh

echo "Vim setup completed!"
