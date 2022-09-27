#!/usr/bin/env bash

set -e

ROOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLAYBOOK="$ROOTDIR/installation.yml"

dnf update && dnf install -y ansible

sudo -u "$SUDO_USER" ansible-playbook "$PLAYBOOK" --ask-become-pass

exit 0
