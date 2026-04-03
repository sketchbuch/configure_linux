# Configure Linux

My ansible setup to configure linux and install apps etc. in real and virtual environments.

## Docs

- [Ansible](./docs/ansible.md)
- [Examples](./docs/examples.md)
- [Todo](./docs/todo.md)
- [Tutorials](./docs/tutorials.md)

## Roles

- [Common](./roles/common/readme.md)
- [Setup](./roles/setup/readme.md)

## Linting

To lint yaml:

```bash
sudo apt install ansible-lint

ansible-lint -c ./.ansible-lint.yaml
```
