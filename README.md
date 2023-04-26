# Configure Linux

> **Warning**
> NOT YET READY - TESTING

Ansible setup to configure a my linux distro and install apps etc. in real and virtual environments.

## Prerequisites

- **Install Git**
  -  `sudo apt install git`

- **Install Ansible**
  -  `sudo apt install ansible`

- **Install Flatpak**
  -  See official guide, e.g. https://flatpak.org/setup/Ubuntu

- **Install psutil**
  -  `sudo apt-get install -y python3-psutil`

## Run

`sudo ansible-pull -U https://github.com/sketchbuch/configure_linux.git`

## Notes

Although flatpak can be installed via ansible, a restart is required.

Based on: https://www.youtube.com/watch?v=gIDywsGBqf4

### Example Github Repos:

- https://github.com/LearnLinuxTV/personal_ansible_desktop_configs
- https://github.com/pppontusw/ansible-role-linux-desktop
