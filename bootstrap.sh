#!/usr/bin/env bash

set -e

ROOTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLAYBOOK="$ROOTDIR/installation.yml"

apt update && apt install -y ansible

ansible-playbook "$PLAYBOOK" --ask-become-pass

exit 0
