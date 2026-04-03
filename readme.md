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

To lint yaml, make sure you have yamllint installed and then:

```bash
sudo apt install yamllint

yamllint .
```

Unlike other linting tools like eslint, tslint etc. there is no automatic fixing supported.
