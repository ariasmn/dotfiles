#!/usr/bin/env bash

set -e

ROOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLAYBOOK="$ROOTDIR/installation.yml"

dnf upgrade && dnf install -y ansible

ansible-galaxy install --roles-path . jaredhocutt.gnome_extensions
ansible-playbook "$PLAYBOOK" --ask-become-pass

exit 0
