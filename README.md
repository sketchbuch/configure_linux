# Configure Linux

My ansible setup to configure linux and install apps etc. in real and virtual environments.

## Supported Distros and versions

- Ubuntu 24.04
- Fedora 40

## Prerequisites

- **Install Git**

  - `sudo apt install git` (Ubuntu)

- **Install Ansible**

  - `sudo apt install ansible` (Ubuntu)
  - `sudo dnf install ansible` (Fedora)

- **Install Flatpak**

  - See official guide, e.g. <https://flatpak.org/setup/Ubuntu>
  - Although flatpak can be installed via ansible, a restart is required.
  - Ubuntu:

    - `sudo apt install flatpak`
    - `sudo apt install gnome-software-plugin-flatpak`
    - `flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`
    - `flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo`

  - Fedora:

    - Already setup on Fedora, but you can set remotes if needed:
    - `flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo`
    - `flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo`

- **Install psutil**

  - `sudo apt-get install -y python3-psutil` (Ubuntu)

## Run

`sudo ansible-pull -U https://github.com/sketchbuch/configure_linux.git local.yaml`

## Notes

- Based on: <https://www.youtube.com/watch?v=gIDywsGBqf4>
- [YML Validator](https://codebeautify.org/yaml-validator)
- [What's the difference between include_tasks and import_tasks?](https://serverfault.com/questions/875247/whats-the-difference-between-include-tasks-and-import-tasks)
- [Ansible – add user to sudo](https://blaszkowski.com/2018/09/02/ansible-add-user-to-sudo)
- [How to update package cache when using module package from ansible](https://stackoverflow.com/questions/49087220/how-to-update-package-cache-when-using-module-package-from-ansible)
- [Check if user exists with Ansible](http://loc2log.ucoz.com/blog/2020-07-04-70)
- [Export and Import of Gnome Terminal Settings](https://www.reddit.com/r/Ubuntu/comments/mjrqxy/how_to_export_gnome_terminal_settings_profiles/)
- [How to Install Microsoft Fonts on Fedora 37/36/35](https://computingpost.medium.com/how-to-install-microsoft-fonts-on-fedora-37-36-35-26beec25c415)

### Example Github Repos:

- <https://github.com/LearnLinuxTV/personal_ansible_desktop_configs>
- <https://github.com/pppontusw/ansible-role-linux-desktop>
- <https://gist.github.com/carlwgeorge/c560a532b6929f49d9c0df52f75a68ae>
- <https://github.com/PeterMosmans/ansible-role-customize-gnome>
- <https://github.com/FinalDes/ansible-ubuntu-disable-auto-update/>

## Hosts

The following hosts are used:

Host    | Description
------- | ------------------------------------------------------------
all     | All hosts
real    | Hosts that are real
virtual | Hosts that are virtual, running in something like virtualbox

## Todo

**Nice to have**

- Android studio
- ssh
- clone repos

**Fedora 40**

- Install tuxedo stuff
- Set UI font to ibm plex
- St sudo timeout to be same as ubuntu

**Ubuntu 24.04**

- Set UI font to ibm plex
- Set center

**Manual Todos After Running**

- Setup online accounts
- Download keepassxc dbs
- Setup login to vsce
- Download wallpapers and set
- Clone Repos
- Deactivate desktop icons extension
