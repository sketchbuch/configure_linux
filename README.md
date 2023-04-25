# Configure Linux

An Ansible setup to configure linux distros and install apps etc.

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
