# Configure Linux

My ansible setup to configure linux and install apps etc. in real and virtual environments.

## Docs

- [Ansible](./docs/ansible.md)
- [Links](./docs/links.md)
- [Paths](./docs/paths.md)
- [Todo](./docs/todo.md)
- [Tutorials](./docs/tutorials.md)

## Roles

- [Extensions](./roles/extensions/readme.md)
- [Flatpaks](./roles/flatpaks/readme.md)
- [Fonts](./roles/fonts/readme.md)
- [Gnome](./roles/gnome/readme.md)
- [Nautilus](./roles/nautilus/readme.md)
- [Packages](./roles/packages/readme.md)
- [Profile](./roles/profile/readme.md)
- [Setup](./roles/setup/readme.md)
- [Terminals](./roles/terminals/readme.md)

## Dev

### Linting

To lint yaml:

```bash
sudo apt install ansible-lint

ansible-lint -c ./.ansible-lint.yaml
```

## Running

### Prerequisites

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

  - ~~`sudo apt-get install -y python3-psutil` (Ubuntu)~~ Now done via ansible

### Run

```bash
sudo ansible-pull -U https://github.com/sketchbuch/configure_linux.git ./playbooks/all.yaml
```
