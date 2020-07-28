# dotfiles
These are the config files to set up a system so I feel comfortable using it.

Currently running Fedora as my distro and GNOME as my DE.

### Load GNOME config

These extensions should be installed before loading the whole dconf:

- [AppIndicator](https://extensions.gnome.org/extension/615/appindicator-support/)
- [Status Area Horizontal Spacing](https://extensions.gnome.org/extension/355/status-area-horizontal-spacing/)
- [Workspace Matrix](https://extensions.gnome.org/extension/1485/workspace-matrix/): Using this instead of Workspaces to Dock + Horizontal Workspaces.
- [Workspaces to dock](https://extensions.gnome.org/extension/427/workspaces-to-dock/): I keep it installed but disabled, since it crash in the actual GNOME version (3.36.4).

And also, [Tilix](https://github.com/gnunn1/tilix), my terminal of choice.

To load the whole dconf, run:

`dconf load / < dconf-settings.dconf`

### Zsh theme
I use [powerlevel10k](https://github.com/romkatv/powerlevel10k) as my zsh theme.
The installation is [manual](https://github.com/romkatv/powerlevel10k#manual), and the only thing I do different from the provided instructions is that I clone the repository into a hidden folder, like so:

`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k`

### Disable snd_hda_intel power saving settings

Even though the tlp settings overwrite these, those are the files that should be changed, just in case a desktop is being used instead of a laptop. Changing these settings, either here or using the tlp settings prevent the popping noise from ocurring (it mainly happens before the playback of audio/video)


- File `/sys/module/snd_hda_intel/parameters/power_save` value should be `0` 
- File `/sys/module/snd_hda_intel/parameters/power_save_controller` should be `N`
