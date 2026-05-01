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

### Run

```bash
sudo ansible-pull -U https://github.com/sketchbuch/configure_linux.git ./playbooks/all.yaml
```
