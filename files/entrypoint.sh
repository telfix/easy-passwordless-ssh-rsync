#!/bin/ash

# generate keys
ssh-keygen -A

# create authorized_keys from env variable
mkdir -p /root/.ssh
echo "$AUTHORIZED_KEYS" > /root/.ssh/authorized_keys

# start ssh and do not detach and redirect all errors to stdout
exec /usr/sbin/sshd -D -e "$@"
