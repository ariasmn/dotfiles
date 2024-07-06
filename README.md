# dotfiles
These are the config files to set up a system so I feel comfortable using it.

Currently running Fedora as my distro and GNOME as my DE.

### Automatic setup using Ansible
To quickly set-up different workstations using the same config across them, I used [Ansible](https://github.com/ansible/ansible).

Install it and then run:

`ansible-playbook installation.yml --ask-become-pass`

The playbook is a bit of a mess and could be refactored into different tasks but it works for my use.

### Run a single Ansible task
Each task has a tag so it can be run individually. To do so:

`ansible-playbook installation.yml --tags "nameoftag" --ask-become-pass`

### AMD Systems
If using an AMD system, install the Mesa drivers from the `freeworld` repositories. This restores the hardware acceleration functionality, disabled some time ago for legal reasons:

```
$ sudo dnf install mesa-va-drivers-freeworld
$ sudo dnf mesa-vdpau-drivers-freeworld
```

### Zsh theme
I use [powerlevel10k](https://github.com/romkatv/powerlevel10k) as my zsh theme.
The installation is [manual](https://github.com/romkatv/powerlevel10k#manual), and the only thing I do different from the provided instructions is that I clone the repository into a hidden folder, like so:

`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k`
