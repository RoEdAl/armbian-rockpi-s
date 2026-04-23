#!/bin/bash

declare -r JOURNALD_CONF_DIR=/usr/lib/systemd/journald.conf.d
mkdir -p $JOURNALD_CONF_DIR
cat << 'EOF' > $JOURNALD_CONF_DIR/storage.conf
[Journal]
Storage=volatile
EOF
chmod 0644 $JOURNALD_CONF_DIR/storage.conf
