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

The following commands us `http.sslVerify=false`, this needs to be investigated and removed, use for now.

If running in a VM, make sure the time is correct or it will cause certificate errors. Restarting will fix this.

Clone the repo:

```bash
git -c http.sslVerify=false clone https://github.com/sketchbuch/configure_linux.git

cd configure_linux/

git checkout feat/switch-to-ansible-playbook
```

Run the playbook:

```bash
sudo ansible-playbook main.yaml
```

If needed after making changes to repo, pull:

```bash
git -c http.sslVerify=false pull
```
