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
git clone https://github.com/YanivMendiuk/linux_task1.git
```
### Steps before running the script

If you are using linux mint please follow next steps:
```
vi etc/apt/sources.list
```
Look for any lines that refernce cdrom:// and remove them. 
You can simply somment them out by adding a # at the beginning of the line.

### Run the Setup Script

```bash
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

- A Debian-based Linux distribution (Mint, Ubuntu, Debian, etc.).
- `sudo` privileges.
- `curl` and `git` installed (if not, install using `sudo apt-get install curl git -y`).
