# System Setup Scripts

## Overview

This project automates the setup of a development environment on a Linux system. It includes scripts to install essential system packages, configure Vim, and install additional non-APT packages such as `kubectl` and AWS CLI.

## Scripts Included

### 1. `system_setup.sh`

This script is the main entry point for setting up the system. It:

- Updates and upgrades the system package lists.
- Installs essential tools from the default APT repositories.
- Runs additional scripts to install non-APT packages.
- Configures Vim using `setup_vim.sh`.

### 2. `install_non_apt_packages.sh`

This script installs packages that are not available in the default APT repositories. It:

- Installs `kubectl` by adding the Kubernetes package repository.
- Downloads and installs AWS CLI.
- Verifies that the installations are successful.

### 3. `setup_vim.sh`

This script configures Vim by:

- Creating or updating the `.vimrc` file with predefined settings.
- Enabling syntax highlighting, clipboard support, indentation rules, and various usability enhancements.

## Installation & Usage

### Clone the Repository

```bash
git clone https://github.com/your-repo-name/system-setup.git
cd system-setup
```

### Run the Setup Script

```bash
chmod +x system_setup.sh
./system_setup.sh
```

### Verify Installations

After running the script, check the installed versions:

```bash
kubectl version --client
aws --version
git --version
vim --version
```

## Requirements

- A Debian-based Linux distribution (Ubuntu, Debian, etc.).
- `sudo` privileges.
- `curl` and `git` installed (if not, install using `sudo apt-get install curl git -y`).

## Contributing

Feel free to submit issues or pull requests to improve this setup process!

## License

This project is licensed under the MIT License.

The project name is https\://github.com/YanivMendiuk/linux\_task1.git

