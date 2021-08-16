# dotfiles
These are the config files to set up a system so I feel comfortable using it.

Currently running Debian as my distro and KDE as my DE.

### Automatic setup using ansible
To quickly set-up different workstations using the same config across them, I used [Ansible](https://github.com/ansible/ansible).

Just run the `bootstrap.sh` script to automatically install Ansible and run the playbook. It will install and load the dotfiles for different applications that I use.

The playbook is a bit of a mess and could be refactored into different tasks but it works for my use.

### Run a single Ansible task
Each task has a tag so it can be run individually. To do so:

`ansible-playbook installation.yml --tags "nameoftag" --ask-become-pass`

### Zsh theme
I use [powerlevel10k](https://github.com/romkatv/powerlevel10k) as my zsh theme.
The installation is [manual](https://github.com/romkatv/powerlevel10k#manual), and the only thing I do different from the provided instructions is that I clone the repository into a hidden folder, like so:

`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k`

### Disable snd_hda_intel power saving settings

Even though the tlp settings overwrite these, those are the files that should be changed, just in case a desktop is being used instead of a laptop. Changing these settings, either here or using the tlp settings prevent the popping noise from ocurring (it mainly happens before the playback of audio/video)


- File `/sys/module/snd_hda_intel/parameters/power_save` value should be `0` 
- File `/sys/module/snd_hda_intel/parameters/power_save_controller` should be `N`
