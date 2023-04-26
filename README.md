# Configure Linux

> **Warning** NOT YET READY - TESTING

My ansible setup to configure linux and install apps etc. in real and virtual environments.

## Prerequisites

- **Install Git**

  - `sudo apt install git`

- **Install Ansible**

  - `sudo apt install ansible`

- **Install Flatpak**

  - See official guide, e.g. <https://flatpak.org/setup/Ubuntu>

- **Install psutil**

  - `sudo apt-get install -y python3-psutil`

## Run

`sudo ansible-pull -U https://github.com/sketchbuch/configure_linux.git`

## Notes

Although flatpak can be installed via ansible, a restart is required.

Based on: <https://www.youtube.com/watch?v=gIDywsGBqf4>

### Example Github Repos:

- <https://github.com/LearnLinuxTV/personal_ansible_desktop_configs>
- <https://github.com/pppontusw/ansible-role-linux-desktop>

## Hosts

The following hosts are used:

Host    | Description
------- | -----------------------------------------------------------
all     | All hosts
real    | Hosts that are real
virtual | Hosts that are virtual running in something like virtualbox

## Tags

The following tags are used:

### Host Types

Tag     | Description
------- | -----------------
all     | All hosts
real    | Real computers
virtual | Virtual computers

### Facts and Dependencies

Tag          | Description
------------ | ----------------------------------------------------
dep_check    | Checking if some dependency is installed
distro_tasks | Tasks targeting a specific distro like Ubuntu
files        | To do with creating/editing files
folders      | To do with creating/editing folders
pkg_facts    | To do with collecting package facts
set_fact     | Storing something to a variable to be accessed later
setup        | Some kind of setup, like creating folders or files
user         | Related to the use profile
