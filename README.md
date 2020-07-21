# Ismael's dotfiles

:warning: Under construction :warning:

Backup of my personal dotfiles.
Keep in mind that some dotfiles need packages to be installed (tilix for example). Cheatsheet (if needed) about installation inside each folder.

### Disable snd_hda_intel power saving settings

Even though the tlp settings overwrite these, those are the files that should be changed, just in case a desktop is being used instead of a laptop. Changing these settings, either here or using the tlp settings prevent the popping noise from ocurring (it mainly happens before the playback of audio/video)


- File `/sys/module/snd_hda_intel/parameters/power_save` value should be `0` 
- File `/sys/module/snd_hda_intel/parameters/power_save_controller` should be `N`
