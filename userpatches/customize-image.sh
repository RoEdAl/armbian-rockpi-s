#!/bin/bash

mkdir -p /usr/lib/systemd/journald.conf.d
cat << 'EOF' > /usr/lib/systemd/journald.conf.d/storage.conf
[Journal]
Storage=volatile
EOF
