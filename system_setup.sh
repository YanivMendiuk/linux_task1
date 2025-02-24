#!/usr/bin/env bash
# -----------------------------------------------------
# Script Name:    system_setup.sh
# Version:        1.1.0
# Author:         Yaniv Mendiuk
# Date:           2025-02-24
# Description:    This script automates the setup of a development environment by:
#                 1. Updating and upgrading the system's package lists.
#                 2. Installing essential tools from the default APT repositories.
#                 3. Running additional scripts to install non-APT packages.
#                 4. Configuring Vim by executing a setup script.
set -o errexit 
set -o pipefail 
set -x 
# -----------------------------------------------------

# Installing packages available in the default APT repositories

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install git net-tools jq yq python3 codium

echo "Finished installing packages available in the default APT repositories."

# Call the install non APT packages script

./install_non_apt_packages.sh

echo "install non APT packages completed!"

# Call the Vim setup script
./setup_vim.sh

echo "Vim setup completed!"
